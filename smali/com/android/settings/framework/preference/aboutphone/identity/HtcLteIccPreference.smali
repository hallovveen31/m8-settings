.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.source "HtcLteIccPreference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e58

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
