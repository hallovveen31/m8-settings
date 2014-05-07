.class public Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;
.super Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;
.source "HtcBluetoothTetherPage2.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcBluetoothTetherPage2"


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private bClickBack:Z

.field private bClickNext:Z

.field private final mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

.field private mThemeId:I

.field private tv_DeviceName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$5;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ClickBackButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private ClickNextButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->ClickBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->ClickNextButton()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnEnabled(Z)V

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0, v5}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    invoke-virtual {p0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetContext(Landroid/content/Context;)V

    const v2, 0x7f0c0aff

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setTitleText(I)V

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->addCustomBottomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->GetBluetoothName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->tv_DeviceName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->tv_DeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideProgress(Z)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideBackBtn(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    if-eq v2, v3, :cond_2

    :goto_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcBluetoothTetherPage2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isThemeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$3;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
