.class public final Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;
.source "PhoneInformation_CT.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 69
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 70
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c06df

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 75
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 86
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBasebandVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBasebandVersionPreference;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 135
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 142
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    .line 143
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 146
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUimIdPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUimIdPreference;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcSystemIdPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcSystemIdPreference;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 171
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcNetworkIdPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcNetworkIdPreference;-><init>(Landroid/content/Context;)V

    .line 172
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->addCallback(Ljava/lang/Object;)V

    .line 179
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->requestHandlers()V

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->TAG:Ljava/lang/String;

    const-string v2, "Failed to invoke doPlugin(...)"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
