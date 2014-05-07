.class public Lcom/android/settings/framework/content/plugin/HtcPluginManager;
.super Ljava/lang/Object;
.source "HtcPluginManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final PLUGIN_CATEGORY:Ljava/lang/String; = "com.htc.settings.category.PLUGIN_ENTRY"

.field private static final TAG:Ljava/lang/String;

.field private static final sIndexTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation
.end field


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

    const-class v1, Lcom/android/settings/framework/content/plugin/HtcPluginManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->DEBUG:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initPluginEntry()V
    .locals 4

    .prologue
    .line 181
    sget-object v3, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 183
    .local v2, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0

    .line 185
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_0
    return-void
.end method

.method public static isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {p0, v3}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->queryPluginActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 141
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v2, 0x1

    .line 145
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static isPluginable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 157
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 159
    .local v1, isPluggedin:Z
    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return v4

    .line 167
    :cond_0
    sget-object v5, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, key:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 169
    .local v3, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v5, v3, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v5, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 174
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 193
    sget-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->TAG:Ljava/lang/String;

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

    .line 195
    return-void
.end method

.method public static pluginExtraHeaders(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V
    .locals 9
    .parameter "context"
    .parameter "outWrapHeaders"

    .prologue
    .line 73
    invoke-static {}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->initPluginEntry()V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 78
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 79
    .local v6, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    const/4 v1, 0x0

    .line 81
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const/16 v7, 0x80

    invoke-static {p0, v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->queryPluginActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 84
    .local v5, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v7, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 89
    const-string v7, "Found a plug-in header"

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t processName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t labelResId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t iconResId(from ActivityInfo): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t iconResId(from AppInfo): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t metaData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->log(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->toHeader(Landroid/content/pm/ActivityInfo;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    .line 103
    invoke-static {p1, v0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getOrder(Lcom/android/settings/framework/activity/HtcWrapHeaderList;Landroid/content/pm/ActivityInfo;)F

    move-result v2

    .line 106
    .local v2, order:F
    invoke-static {v0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, pluginKey:Ljava/lang/String;
    sget-object v7, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    check-cast v6, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 108
    .restart local v6       #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-eqz v6, :cond_1

    .line 110
    iput v2, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    .line 111
    iput-object v1, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 112
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto/16 :goto_0

    .line 117
    :cond_1
    new-instance v6, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .end local v6           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    invoke-direct {v6}, Lcom/android/settings/framework/activity/HtcWrapHeader;-><init>()V

    .line 118
    .restart local v6       #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iput-object v1, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 119
    invoke-static {v6, v2, p1}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 120
    sget-object v7, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->sIndexTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #order:F
    .end local v3           #pluginKey:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static queryPluginActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 58
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.settings.category.PLUGIN_ENTRY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
