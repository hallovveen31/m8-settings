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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    iput v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    iput-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    return-void
.end method

.method private getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    sget-boolean v5, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v5, :cond_0

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

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBasicNameByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-ltz p2, :cond_0

    array-length v7, v4

    if-lt p2, v7, :cond_2

    :cond_0
    sget-boolean v7, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v7, :cond_1

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

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ne p2, v7, :cond_4

    const-string v7, "customize_settings_voice_assistant"

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getACCValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v1, v4, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/16 v7, 0x80

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    aget-object v1, v4, p2

    goto :goto_0
.end method

.method private getIndexFromRawData(Ljava/lang/String;)I
    .locals 2

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

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getIndexFromRawData(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    sget-boolean v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->DEBUG:Z

    if-eqz v3, :cond_3

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

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getBasicNameByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

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

    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentRawData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mComponent:Ljava/lang/String;

    return-void
.end method

.method public setFingerIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mFingerIndex:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->mName:Ljava/lang/String;

    return-void
.end method
