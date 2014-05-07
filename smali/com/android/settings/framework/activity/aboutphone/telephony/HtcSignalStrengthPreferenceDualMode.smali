.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;
.super Lcom/htc/preference/HtcPreference;
.source "HtcSignalStrengthPreferenceDualMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcSignalStrengthPreferenceDualMode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPhoneType:I

.field private final mDualGsmPhone:Z

.field private final mDualPhone:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z

    .line 27
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneType:I

    .line 73
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z

    .line 27
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneType:I

    .line 73
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z

    .line 27
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneType:I

    .line 73
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->initial(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I

    return v0
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcSignalStrengthPreferenceDualMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initial(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneType:I

    .line 64
    const-string v0, "HtcSignalStrengthPreferenceDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial!PhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 71
    return-void
.end method


# virtual methods
.method public register()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 180
    :cond_1
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I

    .line 167
    return-void
.end method

.method public unregister(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 183
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I

    .line 184
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    return-void
.end method

.method public updateSignalStrength(I)V
    .locals 10
    .parameter "phoneType"

    .prologue
    const v9, 0x7f0c0b6b

    const/4 v8, 0x2

    const/4 v4, -0x1

    .line 112
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    :cond_0
    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    .line 128
    const/4 v1, 0x0

    .local v1, signalAsu:I
    const/4 v2, -0x1

    .line 129
    .local v2, signalDbm:I
    if-ne p1, v8, :cond_6

    .line 130
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 140
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; signalAsu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; signalDbm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-ne v4, v2, :cond_4

    const/4 v2, 0x0

    .line 144
    :cond_4
    if-ne v4, v1, :cond_5

    const/4 v1, 0x0

    .line 149
    :cond_5
    if-ne p1, v8, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setCDMASummury"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_6
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 133
    .local v3, sthength:I
    const/16 v5, 0x63

    if-ne v3, v5, :cond_7

    move v1, v4

    .line 134
    :goto_2
    if-eq v1, v4, :cond_3

    .line 135
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v2, v5, -0x71

    goto :goto_1

    :cond_7
    move v1, v3

    .line 133
    goto :goto_2

    .line 155
    .end local v3           #sthength:I
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setGSMSummury"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0b6c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
