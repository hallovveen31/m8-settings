.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;
.super Lcom/htc/preference/HtcPreference;
.source "HtcServiceStatePreferenceDualMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcServiceStatePreferenceDualMode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPhoneType:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 55
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 55
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 55
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    return v0
.end method

.method private initial(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 48
    const-string v0, "HtcServiceStatePreferenceDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial!PhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public register()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 108
    :cond_1
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 96
    return-void
.end method

.method public unregister(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 113
    return-void
.end method

.method public updateServiceState()V
    .locals 6

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 73
    .local v2, state:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v1

    .line 74
    .local v1, phonetype:I
    const-string v3, "HtcServiceStatePreferenceDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- service state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , phoneType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0b68

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, display:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0           #display:Ljava/lang/String;
    .end local v1           #phonetype:I
    .end local v2           #state:I
    :cond_0
    return-void

    .line 79
    .restart local v0       #display:Ljava/lang/String;
    .restart local v1       #phonetype:I
    .restart local v2       #state:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0b5b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0b5c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0b5e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
