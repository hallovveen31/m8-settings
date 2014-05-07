.class public abstract Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcAbstractTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;
    }
.end annotation


# static fields
.field private static LOCKER:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static mPhone:Lcom/android/internal/telephony/Phone;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->LOCKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getPhoneObject()Lcom/android/internal/telephony/Phone;
    .locals 2

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getPhoneType()Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->NONE:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->NONE:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->GSM:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->CDMA:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->SIP:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected isCdmaPhoneType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->getPhoneType()Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->CDMA:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isGsmPhoneType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->getPhoneType()Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->GSM:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSipPhoneType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->getPhoneType()Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->SIP:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected releasePhoneObject()V
    .locals 2

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected releaseTelephonyManager()V
    .locals 2

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
