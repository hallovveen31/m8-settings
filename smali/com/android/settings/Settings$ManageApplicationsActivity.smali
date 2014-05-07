.class public Lcom/android/settings/Settings$ManageApplicationsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageApplicationsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 831
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 832
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getAppsTitleResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$ManageApplicationsActivity;->setTitle(I)V

    .line 833
    return-void
.end method
