.class Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;
.super Ljava/lang/Object;
.source "HtcPluginMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata$FieldValues;,
        Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata$FieldNames;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillHeaderIcon(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_0
.end method

.method private static fillHeaderLaunchTarget(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 8

    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fragment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v3, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v5, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "intent:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchTarget: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static fillHeaderOrder(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            "Landroid/content/pm/ActivityInfo;",
            "Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getAnchorShift(Landroid/content/pm/ActivityInfo;)F

    move-result v2

    const-wide/32 v4, 0x7f090327

    invoke-interface {p2, v4, v5}, Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;->getEntryById(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/activity/HtcWrapHeader;

    iget v4, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    const v5, 0x358637bd

    sub-float v3, v4, v5

    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;->getEntryByAnchor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    add-float v3, v4, v2

    :cond_0
    iput v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    return-void
.end method

.method private static fillHeaderTitle(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private static getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "plugAnchorItem"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v5, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t anchorItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcMultiValueSplitter;->split(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getCurrentCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    sget-boolean v5, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t #(customAnchors)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v5, "\n\t\t "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static getAnchorShift(Landroid/content/pm/ActivityInfo;)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugAnchorShift"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    const v0, 0x3f7fffef

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t anchorShift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/high16 v1, -0x4080

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, -0x40800011

    goto :goto_0
.end method

.method private static getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchTarget"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t launchTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "activity"

    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t launchType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static toWrapHeader(Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            "*>;)",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderLaunchTarget(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderIcon(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderTitle(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderOrder(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)V

    return-object v0
.end method
