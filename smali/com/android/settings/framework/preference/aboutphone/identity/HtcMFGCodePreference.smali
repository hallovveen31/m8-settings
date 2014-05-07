.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcMFGCodePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string v1, "persist.radio.htc_mfg_code"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mfg_code:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMFGCodePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e4a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0
.end method