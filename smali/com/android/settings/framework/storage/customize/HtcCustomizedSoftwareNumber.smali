.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;
.super Ljava/lang/Object;
.source "HtcCustomizedSoftwareNumber.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final FUNCTION_ENTRIES:Ljava/lang/String; = "sw_number"

.field private static final MODULE_NAME:Ljava/lang/String; = "deviceData1"

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedSoftwareNumber"

.field private static mHasCustomizedData:Z

.field private static mSoftwareNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mHasCustomizedData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mHasCustomizedData:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->readCustomizedData(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mHasCustomizedData:Z

    sget-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mHasCustomizedData:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->readDefaultData(Landroid/content/Context;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "system"

    const-string v4, "deviceData1"

    invoke-static {p0, v3, v4}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "sw_number"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcCustomizedSoftwareNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Software_Number:sw_number > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    const-string v4, "NA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static readDefaultData(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCustomizedSoftwareNumber"

    const-string v1, "no SIE data, read default data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "ro.product.version"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->mSoftwareNumber:Ljava/lang/String;

    return-void
.end method
