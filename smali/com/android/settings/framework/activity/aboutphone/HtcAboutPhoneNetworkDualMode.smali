.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneNetworkDualMode.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneNetworkDualMode"

.field private static final PHONE_PACK:Ljava/lang/String; = "com.android.phone"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field private static final SETTING_PACK:Ljava/lang/String; = "com.android.settings"

.field private static final SLOT_1_MODE_KEY:Ljava/lang/String; = "gsm.current.slot1.mode"

.field private static final SLOT_MODE_GLOBAL:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsForeground:Z

.field private mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;

.field private mMainOperatorNamePreference:Lcom/htc/preference/HtcPreference;

.field private mMainPhoneType:I

.field private mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

.field private mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;

.field private mSubOperatorNamePreference:Lcom/htc/preference/HtcPreference;

.field private mSubPhoneType:I

.field private mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

.field private mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private doPlugin()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c06ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a11

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a12

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isNonWorldPhoneC2G()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, v0

    move-object v0, v4

    move-object v4, v6

    :cond_0
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {p0, v7, v0, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginOperatorName(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {p0, v7, v4, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginOperatorName(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginSignalStrength(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setPhoneType(I)V

    const-string v7, "HtcAboutPhoneNetworkDualMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MainPhoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginSignalStrength(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setPhoneType(I)V

    const-string v7, "HtcAboutPhoneNetworkDualMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSubPhoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {p0, v7, v0, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginNetworkType(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {p0, v7, v4, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginNetworkType(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginServiceState(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->setPhoneType(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginServiceState(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->setPhoneType(I)V

    :cond_4
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-static {v7, v0, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginRoaming(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-static {v7, v4, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->pluginRoaming(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;

    return-void
.end method

.method public static getSlot1PhoneType()I
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isWphoneByHtcTelephonyCapability()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isModeCG()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v1

    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/htc/telephony/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAboutPhoneNetworkDualMode"

    const-string v4, "isSlot1C2G() getCurrentSlot1PhoneType reflection error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final isC2G()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->getSlot1PhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isModeCG()Z
    .locals 1

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    return v0
.end method

.method private isNonWorldPhoneC2G()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isWphoneByHtcTelephonyCapability()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->isC2G()Z

    move-result v0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isWphoneByHtcTelephonyCapability()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, -0x8000

    and-int v6, v1, v4

    if-ne v6, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_0

    const-string v6, "persist.radio.worldphone"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_0
    return v3

    :cond_1
    move v2, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "HtcAboutPhoneNetworkDualMode"

    const-string v7, "isWphoneByHtcTelephonyCapability:false"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static pluginRoaming(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;
    .locals 5

    new-instance v0, Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    const v3, 0x7f0f0017

    invoke-direct {v0, p0, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    const v2, 0x7f0c0e5e

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const-string v2, "HtcAboutPhoneNetworkDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0b5f

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    return-object v0

    :cond_0
    const v2, 0x7f0c0b60

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginServiceState(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    const/4 v1, 0x0

    const v2, 0x7f0f0017

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0e5c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    return-object v0
.end method


# virtual methods
.method public loadSettingContext()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "HtcAboutPhoneNetworkDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isGG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    iput v5, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->loadSettingContext()V

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v5, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->unregister(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iget v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->unregister(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->unregister(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iget v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->unregister(I)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->register()V

    const-string v0, "HtcAboutPhoneNetworkDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainPhoneType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->register()V

    const-string v0, "HtcAboutPhoneNetworkDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubPhoneType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->register()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->register()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mIsForeground:Z

    const-string v0, "HtcAboutPhoneNetworkDualMode"

    const-string v1, "update!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4
    return-void
.end method

.method public pluginNetworkType(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;
    .locals 10

    const v9, 0x7f0c0b48

    new-instance v5, Lcom/htc/preference/HtcPreference;

    const/4 v7, 0x0

    const v8, 0x7f0f0017

    invoke-direct {v5, p1, v7, v8}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "gsm.network.type"

    const/4 v7, 0x1

    if-ne p3, v7, :cond_5

    const-string v2, "gsm.gsm.network.type"

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "phonetype"

    invoke-virtual {v0, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v7

    const-string v8, "getDataNetworkTypeExt"

    invoke-virtual {v7, v8, v0}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "getDataNetworkTypeExt"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v7

    const-string v8, "getVoiceNetworkTypeExt"

    invoke-virtual {v7, v8, v0}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "getVoiceNetworkTypeExt"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v7, "Unknown"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v7, "HtcAboutPhoneNetworkDualMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , networkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0e59

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    return-object v5

    :cond_5
    const/4 v7, 0x5

    if-ne p3, v7, :cond_6

    const-string v2, "gsm.sub.network.type"

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x2

    if-ne p3, v7, :cond_0

    const-string v2, "gsm.cdma.network.type"

    goto/16 :goto_0
.end method

.method public pluginOperatorName(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;
    .locals 6

    new-instance v1, Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x0

    const v4, 0x7f0f0017

    invoke-direct {v1, p1, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameExt(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "HtcAboutPhoneNetworkDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , operatorName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0700

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    return-object v1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pluginSignalStrength(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;
    .locals 3

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    const/4 v1, 0x0

    const v2, 0x7f0f0017

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0e5d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    return-object v0
.end method
