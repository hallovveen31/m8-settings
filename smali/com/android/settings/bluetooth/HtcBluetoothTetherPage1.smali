.class public Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;
.super Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;
.source "HtcBluetoothTetherPage1.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcBluetoothTetherPage1"


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private Edit_DeviceName:Lcom/htc/widget/HtcEditText;

.field private bClickNext:Z

.field private final mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DeviceName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->bClickNext:Z

    .line 193
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$4;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$5;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ClickBackButton()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method private ClickNextButton()V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, newDeviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->Edit_DeviceName:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetBluetoothName(Ljava/lang/String;)V

    .line 190
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->bClickNext:Z

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->ClickBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->ClickNextButton()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 151
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnEnabled(Z)V

    .line 155
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnEnabled(Z)V

    .line 159
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mThemeId:I

    .line 51
    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setTheme(I)V

    .line 54
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 56
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetContext(Landroid/content/Context;)V

    .line 58
    const v2, 0x7f0c0aff

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setTitleText(I)V

    .line 64
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 65
    .local v1, mInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, mCustomView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->addCustomBottomView(Landroid/view/View;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->GetBluetoothName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DeviceName:Ljava/lang/String;

    .line 69
    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcEditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->Edit_DeviceName:Lcom/htc/widget/HtcEditText;

    .line 70
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->Edit_DeviceName:Lcom/htc/widget/HtcEditText;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnText(I)V

    .line 74
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->hideProgress(Z)V

    .line 89
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->hideBackBtn(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->ShowAirplaneWarningDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->IsBluetoothOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setNextBtnEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetooth(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/16 v2, 0x2ee5

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 167
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 175
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onResume()V

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->bClickNext:Z

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->mThemeId:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 115
    .local v0, isThemeChanged:Z
    :cond_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "HtcBluetoothTetherPage1"

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

    .line 118
    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$3;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 130
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 163
    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 179
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onStop()V

    .line 142
    return-void
.end method
