.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDecMeidPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field MEID:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0733

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/16 v12, 0xe

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c00c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, DecMEID:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 76
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->getSingleton()Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "METHOD_NAME_GET_MEID"

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->GetDeviceinfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 83
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    .line 90
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b48

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    .line 94
    :cond_2
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v12, :cond_3

    .line 96
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 97
    .local v4, lowbits:Ljava/lang/Long;
    const-string v6, "%010d"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, lowValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->MEID:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 99
    .local v2, highbits:Ljava/lang/Long;
    const-string v6, "%08d"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, highValue:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .end local v1           #highValue:Ljava/lang/String;
    .end local v2           #highbits:Ljava/lang/Long;
    .end local v3           #lowValue:Ljava/lang/String;
    .end local v4           #lowbits:Ljava/lang/Long;
    :cond_3
    return-object v0
.end method
