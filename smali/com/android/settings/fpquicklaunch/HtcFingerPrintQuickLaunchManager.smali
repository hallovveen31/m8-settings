.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;
.super Ljava/lang/Object;
.source "HtcFingerPrintQuickLaunchManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final NAME_FINGER_PRINT_QUICK_LAUNCH_SHARED_PREFERENCES:Ljava/lang/String; = "finger_print_quick_launch_shared_preferences"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dataChangedNotify(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.FINGER_PRINT_QUICK_LAUNCH_APP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method public static dumpEnrolledFingerRecord(Landroid/content/Context;Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V
    .locals 3
    .parameter "context"
    .parameter "record"

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump record content:  \nName:                 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id:                   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FingerIndex:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ComponentRawData:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ComponentDisplayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-void
.end method

.method public static getACCValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "flagName"

    .prologue
    .line 405
    const-string v0, "Settings"

    .line 406
    .local v0, category:Ljava/lang/String;
    new-instance v1, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    .line 407
    .local v1, manager:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v2

    .line 408
    .local v2, reader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, result:Ljava/lang/String;
    sget-boolean v4, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 410
    sget-object v4, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getACCValue() - check the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , the result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    const/4 v3, 0x0

    .line 417
    :cond_1
    return-object v3
.end method

.method public static getBasicAppNumber(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 384
    invoke-static {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, basic:[Ljava/lang/String;
    array-length v5, v0

    .line 387
    .local v5, number:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 388
    aget-object v7, v0, v4

    invoke-static {v7}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 389
    .local v1, basicIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 390
    .local v2, cmp:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, packageName:Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 393
    add-int/lit8 v5, v5, -0x1

    .line 387
    .end local v6           #packageName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    .end local v1           #basicIntent:Landroid/content/Intent;
    .end local v2           #cmp:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 398
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return v5
.end method

.method public static getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/high16 v13, 0x1000

    const/4 v12, 0x0

    .line 324
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ""

    .line 327
    .local v7, unlock:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 336
    .local v2, cameraIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.htc.camera"

    const-string v11, "com.htc.camera.CameraEntry"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {v2, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v4, homeIntent:Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    invoke-virtual {v4, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v8, 0x0

    .line 351
    .local v8, voiceSearchIntent:Landroid/content/Intent;
    const-string v9, "customize_settings_voice_assistant"

    invoke-static {v9}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getACCValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, accValue:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 353
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 354
    new-instance v8, Landroid/content/Intent;

    .end local v8           #voiceSearchIntent:Landroid/content/Intent;
    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v8       #voiceSearchIntent:Landroid/content/Intent;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 371
    invoke-virtual {v8, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 376
    .local v1, basic:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 377
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v1, v5

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 364
    .end local v1           #basic:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 365
    .local v3, customVoiceAssistant:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    .end local v8           #voiceSearchIntent:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 366
    .restart local v8       #voiceSearchIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v8, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 380
    .end local v3           #customVoiceAssistant:Landroid/content/ComponentName;
    .restart local v1       #basic:[Ljava/lang/String;
    .restart local v5       #i:I
    :cond_3
    return-object v1
.end method

.method public static getCurrentFingerId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v1, "finger_print_quick_launch_shared_preferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "current_finger"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "finger"

    .prologue
    .line 104
    const-string v4, "finger_print_quick_launch_shared_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_app#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, result:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, apps:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_0
    return-object v3
.end method

.method public static getFingerAndSelectionMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v5, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "finger_print_quick_launch_shared_preferences"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 151
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 152
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, key:Ljava/lang/String;
    const-string v7, "selection#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 155
    const-string v7, "selection#"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, finger:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 157
    .local v6, selection:Ljava/lang/String;
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    .end local v0           #finger:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getSelection(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "finger"

    .prologue
    .line 137
    const-string v3, "finger_print_quick_launch_shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, pref:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, key:Ljava/lang/String;
    const-string v3, "-1"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, result:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method public static newRecord(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "finger"

    .prologue
    const/4 v2, 0x0

    .line 243
    new-instance v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    if-nez v0, :cond_1

    .line 245
    sget-boolean v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    const-string v4, "-newRecord(), HtcEnrolledFingerManager is null"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v1

    .line 251
    .local v1, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    if-nez v1, :cond_2

    .line 252
    sget-boolean v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 253
    sget-object v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    const-string v4, "-newRecord(), HtcEnrolledFingerRecord is null"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static removeCustomAppByPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 169
    const-string v18, "finger_print_quick_launch_shared_preferences"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 171
    .local v12, pref:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 173
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v9, 0x0

    .line 174
    .local v9, isNeedToNotify:Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v3

    .line 176
    .local v3, BASIC_ITEMS_NUM:I
    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 177
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    .line 178
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 179
    .local v10, key:Ljava/lang/String;
    const-string v18, "custom_app#"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_0

    .line 181
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 185
    .local v17, value:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_0

    .line 187
    const-string v18, "custom_app#"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, finger:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "selection#"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 193
    .local v16, skey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 194
    .local v13, sValue:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 197
    .local v15, selection:I
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, apps:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v14, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 201
    aget-object v18, v4, v7

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 202
    const-string v18, ""

    aput-object v18, v4, v7

    .line 203
    add-int v18, v7, v3

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 206
    const/4 v15, 0x0

    .line 200
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 207
    :cond_2
    add-int v18, v7, v3

    move/from16 v0, v18

    if-le v15, v0, :cond_1

    .line 210
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 213
    :cond_3
    aget-object v18, v4, v7

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_6

    .line 218
    invoke-interface {v5, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->newRecord(Landroid/content/Context;I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 227
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveQuickLaunchAppByPosition(Landroid/content/Context;II)V

    .line 231
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 221
    :cond_6
    const/16 v18, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 222
    move-object/from16 v0, v17

    invoke-interface {v5, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 236
    .end local v4           #apps:[Ljava/lang/String;
    .end local v6           #finger:Ljava/lang/String;
    .end local v7           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #sValue:Ljava/lang/String;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #selection:I
    .end local v16           #skey:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->dataChangedNotify(Landroid/content/Context;)V

    .line 240
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method public static removeFingerSettings(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "finger"

    .prologue
    .line 308
    const-string v4, "finger_print_quick_launch_shared_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 310
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 312
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_app#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, aKey:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, sKey:Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    invoke-static {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->dataChangedNotify(Landroid/content/Context;)V

    .line 318
    return-void
.end method

.method public static saveCurrentFingerId(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "finger"

    .prologue
    .line 49
    const-string v2, "finger_print_quick_launch_shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_finger"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    const/4 v2, 0x1

    return v2
.end method

.method public static saveCustomApplications(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "app"
    .parameter "finger"

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v6, "finger_print_quick_launch_shared_preferences"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 77
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_app#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, key:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, apps:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    const/4 v5, 0x1

    :cond_0
    return v5

    .line 91
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static saveQuickLaunchAppByPosition(Landroid/content/Context;II)V
    .locals 9
    .parameter "context"
    .parameter "position"
    .parameter "finger"

    .prologue
    .line 262
    new-instance v4, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    .line 263
    .local v4, mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    invoke-static {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v1

    .line 264
    .local v1, basicItemNum:I
    if-gez p1, :cond_1

    .line 265
    sget-boolean v6, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 266
    sget-object v6, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveQuickLaunchAppByPosition, error position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, p2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v5

    .line 274
    .local v5, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    if-ge p1, v1, :cond_2

    .line 275
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    .line 278
    invoke-static {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->dumpEnrolledFingerRecord(Landroid/content/Context;Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    .line 279
    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {p0, p2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, apps:[Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    move v3, p1

    .line 285
    .local v3, idx:I
    sub-int/2addr v3, v1

    .line 286
    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    .line 288
    invoke-static {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->dumpEnrolledFingerRecord(Landroid/content/Context;Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    .line 289
    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0
.end method

.method public static saveSelection(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "selection"
    .parameter "finger"

    .prologue
    .line 123
    const-string v3, "finger_print_quick_launch_shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 125
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, key:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    invoke-static {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->dataChangedNotify(Landroid/content/Context;)V

    .line 131
    return-void
.end method
