.class Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;
.super Ljava/lang/Object;
.source "HtcPluginMetadata.java"


# static fields
.field public static final ANCHOR_ITEM:Ljava/lang/String; = "plugAnchorItem"

.field public static final ANCHOR_SHIFT:Ljava/lang/String; = "plugAnchorShift"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_LAUNCH_TYPE:Ljava/lang/String; = "activity"

.field public static final DEFAULT_SHIFT:F = -1.0E-5f

.field public static final FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final LAUNCH_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final LAUNCH_FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final LAUNCH_TARGET:Ljava/lang/String; = "plugLaunchTarget"

.field public static final LAUNCH_TYPE:Ljava/lang/String; = "plugLaunchType"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillHeaderIcon(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 148
    iget v0, p1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v0, :cond_0

    .line 149
    iget v0, p1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_0
.end method

.method private static fillHeaderTitle(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 163
    iget v0, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 164
    iget v0, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private static fillLaunchTarget(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V
    .locals 8
    .parameter "header"
    .parameter "activityInfo"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, launchTarget:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, launchType:Ljava/lang/String;
    const-string v5, "fragment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    iput-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 93
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 94
    iget-object v5, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "intent:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v3, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/net/URISyntaxException;
    sget-object v5, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

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

    .line 122
    .end local v1           #e:Ljava/net/URISyntaxException;
    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 124
    .local v0, componentName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v2, intent:Landroid/content/Intent;
    if-nez v0, :cond_3

    .line 131
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #componentName:Landroid/content/ComponentName;
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v0       #componentName:Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    iput-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 7
    .parameter "activityInfo"

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, anchorItem:Ljava/lang/String;
    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 305
    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "plugAnchorItem"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_0
    sget-boolean v5, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t mAnchorItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 313
    :cond_1
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcMultiValueSplitter;->split(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 316
    .local v3, customAnchors:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 317
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getCurrentCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anchorItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 319
    .restart local v1       #anchorItem:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 320
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anchorItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 323
    .restart local v1       #anchorItem:Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 324
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 327
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v5, "\t\t #(customAnchors)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
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

    .line 342
    .end local v0           #anchor:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 345
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    return-object v1
.end method

.method private static getAnchorShift(Landroid/content/pm/ActivityInfo;)F
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, anchorShift:F
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugAnchorShift"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 363
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 364
    const v0, 0x3f7ffffe

    .line 369
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t mAnchorShift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 373
    :cond_2
    return v0

    .line 365
    :cond_3
    const/high16 v1, -0x4080

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 366
    const v0, -0x40800002

    goto :goto_0
.end method

.method static getLaunchTarget(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, launchTarget:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchTarget"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_0
    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 263
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t mLaunchTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 266
    :cond_2
    return-object v0
.end method

.method private static getLaunchType(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, launchType:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "plugLaunchType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    if-nez v0, :cond_1

    .line 285
    const-string v0, "activity"

    .line 288
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t mLaunchType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->log(Ljava/lang/String;)V

    .line 291
    :cond_2
    return-object v0
.end method

.method static getOrder(Lcom/android/settings/framework/activity/HtcWrapHeaderList;Landroid/content/pm/ActivityInfo;)F
    .locals 14
    .parameter "outWrapHeaders"
    .parameter "activityInfo"

    .prologue
    const-wide/32 v12, 0x7f09031d

    const-wide v10, 0x3fe999999999999aL

    const-wide v8, 0x3fd999999999999aL

    .line 181
    invoke-static {p1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getAnchorItem(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, anchorItem:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->getAnchorShift(Landroid/content/pm/ActivityInfo;)F

    move-result v2

    .line 185
    .local v2, anchorShift:F
    const-wide/32 v6, 0x7f090327

    invoke-static {v6, v7}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    const v7, -0x48d83a54

    add-float v4, v6, v7

    .line 188
    .local v4, order:F
    if-eqz v1, :cond_1

    .line 189
    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getFullEntryList()Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    move-result-object v5

    .line 191
    .local v5, wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    invoke-virtual {v5}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 192
    invoke-virtual {v5, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->get(I)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    .line 193
    .local v0, anchor:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v6, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    iget v6, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    add-float v4, v6, v2

    .line 191
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 202
    .end local v0           #anchor:Lcom/android/settings/framework/activity/HtcWrapHeader;
    .end local v3           #i:I
    .end local v5           #wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    :cond_1
    const-string v6, "com.htc.dockmode"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    const-wide/32 v6, 0x7f090322

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 206
    if-nez v1, :cond_2

    .line 207
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    const-wide/32 v6, 0x7f09031b

    invoke-static {v6, v7}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 242
    :cond_2
    :goto_1
    return v4

    .line 211
    :cond_3
    const-wide/32 v6, 0x7f090321

    invoke-static {v6, v7}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-float v4, v6

    goto :goto_1

    .line 215
    :cond_4
    const-string v6, "com.htc.wifidisplay"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 217
    const-wide/32 v6, 0x7f090302

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 219
    if-nez v1, :cond_2

    .line 220
    const-wide/32 v6, 0x7f090303

    invoke-static {v6, v7}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-float v4, v6

    goto :goto_1

    .line 224
    :cond_5
    const-string v6, "com.htc.AutoMotive"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    const-wide/32 v6, 0x7f09031f

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 228
    if-nez v1, :cond_2

    .line 229
    invoke-static {v12, v13}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-float v4, v6

    goto :goto_1

    .line 232
    :cond_6
    const-string v6, "com.htc.htcpowermanager"

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    const-wide/32 v6, 0x7f09031e

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 236
    if-nez v1, :cond_2

    .line 237
    invoke-static {v12, v13}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-float v4, v6

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 382
    sget-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->TAG:Ljava/lang/String;

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

    .line 383
    return-void
.end method

.method static toHeader(Landroid/content/pm/ActivityInfo;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 65
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 66
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 69
    invoke-static {v0, p0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->fillHeaderIcon(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V

    .line 72
    invoke-static {v0, p0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->fillHeaderTitle(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V

    .line 75
    invoke-static {v0, p0}, Lcom/android/settings/framework/content/plugin/HtcPluginMetadata;->fillLaunchTarget(Lcom/htc/preference/HtcPreferenceActivity$Header;Landroid/content/pm/ActivityInfo;)V

    .line 77
    return-object v0
.end method
