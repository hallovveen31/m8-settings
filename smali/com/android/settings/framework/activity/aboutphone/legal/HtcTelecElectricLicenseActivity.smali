.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcTelecElectricLicenseActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcTelecElectricLicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcTelecElectricLicenseActivity;->setContentView(I)V

    .line 24
    return-void
.end method
