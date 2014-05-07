.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcImeiPreferenceDualMode.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mIMEI:Ljava/lang/String;

.field mPhoneType:I


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

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "phoneType"

    .prologue
    .line 34
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput p2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->mPhoneType:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 40
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->mIMEI:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e51

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->mIMEI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->mIMEI:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 80
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->mPhoneType:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceIdExt(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, IMEI:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b48

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
