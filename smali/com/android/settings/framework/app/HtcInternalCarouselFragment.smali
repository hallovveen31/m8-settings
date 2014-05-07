.class public Lcom/android/settings/framework/app/HtcInternalCarouselFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "HtcInternalCarouselFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->TAG:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "authority"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0c0c2c

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->getParentFragmentTitleResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->enabledBackupButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->getBackParentWithExtra()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
