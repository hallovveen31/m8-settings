.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcTelecElectricLicenseActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcTelecElectricLicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method
