.class public Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
.super Ljava/lang/Object;
.source "HtcEnrolledFingerRecord.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mFingerIndex:I

.field private mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    .line 28
    iput v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    .line 29
    iput-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "flattenText"

    .prologue
    .line 91
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 94
    .local v1, component:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 95
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 96
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 100
    sget-object v5, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppName, e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBasicNameByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "index"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, entries:[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v7, v4

    if-lt p2, v7, :cond_2

    .line 113
    :cond_0
    sget-boolean v7, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 114
    sget-object v7, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBasicNameByIndex, invalid index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 119
    :cond_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ne p2, v7, :cond_4

    .line 120
    const-string v7, "customize_settings_voice_assistant"

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getACCValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, accValue:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 122
    invoke-static {p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    aget-object v1, v4, p2

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 128
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 129
    .local v2, customVoiceAssistant:Landroid/content/ComponentName;
    const/16 v7, 0x80

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 130
    .local v5, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, appLabel:Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v1           #appLabel:Ljava/lang/String;
    .end local v2           #customVoiceAssistant:Landroid/content/ComponentName;
    .end local v5           #info:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 133
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0           #accValue:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    aget-object v1, v4, p2

    goto :goto_0
.end method

.method private getIndexFromRawData(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 143
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 87
    :cond_1
    :goto_0
    return-object v1

    .line 71
    :cond_2
    const/4 v1, 0x0

    .line 72
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getIndexFromRawData(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, index:I
    if-gez v0, :cond_4

    .line 76
    sget-boolean v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 77
    sget-object v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getComponentDisplayName, invalid index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getBasicNameByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 83
    goto :goto_0

    .end local v0           #index:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getComponentRawData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentRawData(Ljava/lang/String;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setFingerIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    .line 39
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method
