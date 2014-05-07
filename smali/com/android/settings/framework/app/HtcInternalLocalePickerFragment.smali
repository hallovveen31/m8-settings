.class public Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;
.super Lcom/android/internal/app/LocalePicker;
.source "HtcInternalLocalePickerFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->TAG:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0c0c2c

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->getParentFragmentTitleResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->enabledBackupButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->getBackParentWithExtra()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    const v0, 0x2080001

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
