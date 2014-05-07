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

    .prologue
    .line 32
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

    .line 35
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static fillHeaderIcon(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 319
    iget v0, p1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, p1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_0
.end method

.method private static fillHeaderLaunchTarget(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 8
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 239
    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, launchTarget:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, launchType:Ljava/lang/String;
    const-string v5, "fragment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v3, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 246
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 247
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v5, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    const-string v5, "intent:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/net/URISyntaxException;
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

    .line 275
    .end local v1           #e:Ljava/net/URISyntaxException;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 298
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_3

    .line 299
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #componentName:Landroid/content/ComponentName;
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .restart local v0       #componentName:Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    iget-object v5, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v2, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static fillHeaderOrder(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)V
    .locals 6
    .parameter "header"
    .parameter "activityInfo"
    .parameter
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

    .prologue
    .line 375
    .local p2, entryProvider:Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;,"Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider<Lcom/android/settings/framework/activity/HtcWrapHeader;*>;"
    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, anchorItem:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->getAnchorShift(Landroid/content/pm/ActivityInfo;)F

    move-result v2

    .line 381
    .local v2, anchorShift:F
    const-wide/32 v4, 0x7f090327

    invoke-interface {p2, v4, v5}, Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;->getEntryById(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/activity/HtcWrapHeader;

    iget v4, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    const v5, 0x358637bd

    sub-float v3, v4, v5

    .line 392
    .local v3, order:F
    if-eqz v1, :cond_0

    .line 397
    invoke-interface {p2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;->getEntryByAnchor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 400
    .local v0, anchor:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-eqz v0, :cond_0

    .line 401
    iget v4, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    add-float v3, v4, v2

    .line 405
    .end local v0           #anchor:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_0
    iput v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    .line 406
    return-void
.end method

.method private static fillHeaderTitle(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 343
    iget v0, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 360
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private static getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 7
    .parameter "activityInfo"

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, anchorItem:Ljava/lang/String;
    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "plugAnchorItem"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    sget-boolean v5, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 157
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

    .line 161
    :cond_1
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcMultiValueSplitter;->split(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 164
    .local v3, customAnchors:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 165
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getCurrentCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anchorItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 167
    .restart local v1       #anchorItem:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 168
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anchorItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 171
    .restart local v1       #anchorItem:Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 172
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 175
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v5, "\t\t #(customAnchors)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, anchor:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
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

    .line 190
    .end local v0           #anchor:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 193
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    return-object v1
.end method

.method private static getAnchorShift(Landroid/content/pm/ActivityInfo;)F
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, anchorShift:F
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugAnchorShift"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 212
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 213
    const v0, 0x3f7fffef

    .line 218
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 219
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

    .line 221
    :cond_2
    return v0

    .line 214
    :cond_3
    const/high16 v1, -0x4080

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 215
    const v0, -0x40800011

    goto :goto_0
.end method

.method private static getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, launchTarget:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchTarget"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 109
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 110
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

    .line 112
    :cond_2
    return-object v0
.end method

.method private static getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, launchType:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    .line 132
    const-string v0, "activity"

    .line 135
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 136
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

    .line 138
    :cond_2
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 414
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

    .line 415
    return-void
.end method

.method public static toWrapHeader(Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 3
    .parameter "activityInfo"
    .parameter
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

    .prologue
    .line 64
    .local p1, entryProvider:Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;,"Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider<Lcom/android/settings/framework/activity/HtcWrapHeader;*>;"
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 67
    .local v0, header:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 70
    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderLaunchTarget(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    .line 73
    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderIcon(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    .line 76
    invoke-static {v0, p0}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderTitle(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;)V

    .line 79
    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/core/firstpage/plugin/HtcPluginMetadata;->fillHeaderOrder(Lcom/android/settings/framework/activity/HtcWrapHeader;Landroid/content/pm/ActivityInfo;Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;)V

    .line 81
    return-object v0
.end method
