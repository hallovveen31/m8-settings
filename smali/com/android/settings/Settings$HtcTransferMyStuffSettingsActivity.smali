.class public Lcom/android/settings/Settings$HtcTransferMyStuffSettingsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcTransferMyStuffSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 847
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 850
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x40b0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 851
    const v0, 0x7f0c0a5f

    .line 855
    .local v0, titleRes:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$HtcTransferMyStuffSettingsActivity;->setTitle(I)V

    .line 856
    return-void

    .line 853
    .end local v0           #titleRes:I
    :cond_0
    const v0, 0x7f0c0a60

    .restart local v0       #titleRes:I
    goto :goto_0
.end method
