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

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    .line 196
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$5;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ClickBackButton()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    .line 187
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->finish()V

    .line 189
    return-void
.end method

.method private ClickNextButton()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->finish()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->ClickBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->ClickNextButton()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 155
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setNextBtnEnabled(Z)V

    .line 159
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setNextBtnEnabled(Z)V

    .line 163
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0, v5}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    .line 53
    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setTheme(I)V

    .line 56
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 58
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetContext(Landroid/content/Context;)V

    .line 60
    const v2, 0x7f0c0aff

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setTitleText(I)V

    .line 66
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 67
    .local v1, mInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, mCustomView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->addCustomBottomView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->GetBluetoothName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    .line 72
    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->tv_DeviceName:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->tv_DeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setNextBtnText(I)V

    .line 83
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->hideProgress(Z)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->hideBackBtn(Z)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 171
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 179
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 175
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    if-ne v0, v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    if-ne v0, v3, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onResume()V

    .line 98
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickBack:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->bClickNext:Z

    .line 105
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mThemeId:I

    if-eq v2, v3, :cond_2

    .line 107
    .local v0, isThemeChanged:Z
    :goto_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
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

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$3;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 122
    :cond_1
    return-void

    .end local v0           #isThemeChanged:Z
    :cond_2
    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 167
    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 183
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onStop()V

    .line 146
    return-void
.end method
