.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcImeiSvPreferenceDualMode.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

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

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "phoneType"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput p2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->mPhoneType:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e52

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 69
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->mPhoneType:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersionExt(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, IMEI_SV:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    move-object v1, v0

    .line 78
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 76
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_0
.end method
