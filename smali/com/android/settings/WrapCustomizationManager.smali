.class public Lcom/android/settings/WrapCustomizationManager;
.super Ljava/lang/Object;
.source "WrapCustomizationManager.java"


# static fields
.field public static READER_NAME_PHONE:Ljava/lang/String; = null

.field public static READER_NAME_RIL:Ljava/lang/String; = null

.field public static final READER_NAME_SYSTEM:Ljava/lang/String; = "system"

.field public static final READER_NAME_TELEPHONY:Ljava/lang/String; = "android_telephony"

.field private static sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    sput-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    const-string v0, "phone"

    sput-object v0, Lcom/android/settings/WrapCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    const-string v0, "Android_Ril"

    sput-object v0, Lcom/android/settings/WrapCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    .locals 1

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    sget-object v1, Lcom/android/settings/WrapCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getRilReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    sget-object v1, Lcom/android/settings/WrapCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()I
    .locals 1

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getStatus()I

    move-result v0

    return v0
.end method

.method public static getSystemReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    const-string v1, "system"

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    const-string v1, "android_telephony"

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static readCID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/WrapCustomizationManager;->sInstance:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
