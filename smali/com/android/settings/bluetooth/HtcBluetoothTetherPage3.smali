.class public Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;
.super Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;
.source "HtcBluetoothTetherPage3.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcBluetoothTetherPage3"


# instance fields
.field private bClickBack:Z

.field private bClickDone:Z

.field private final mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

.field private mThemeId:I

.field private tv_Description:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickBack:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickDone:Z

    .line 207
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$4;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$5;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ClickBackButton()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickBack:Z

    .line 185
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->finish()V

    .line 187
    return-void
.end method

.method private ClickDoneButton()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickDone:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->finish()V

    .line 192
    return-void
.end method

.method private UpdateTetheredUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetheredCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->tv_Description:Landroid/widget/TextView;

    const v1, 0x7f0c0b04

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnEnabled(Z)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setBackBtnEnabled(Z)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->tv_Description:Landroid/widget/TextView;

    const v1, 0x7f0c0b03

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnEnabled(Z)V

    .line 203
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setBackBtnEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->ClickBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->ClickDoneButton()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->UpdateTetheredUI()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 153
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnEnabled(Z)V

    .line 157
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnEnabled(Z)V

    .line 161
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0, v5}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mThemeId:I

    .line 52
    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mThemeId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setTheme(I)V

    .line 55
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 57
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetContext(Landroid/content/Context;)V

    .line 59
    const v2, 0x7f0c0aff

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setTitleText(I)V

    .line 65
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 66
    .local v1, mInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, mCustomView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->addCustomBottomView(Landroid/view/View;)V

    .line 69
    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->tv_Description:Landroid/widget/TextView;

    .line 71
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f0c00e3

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnText(I)V

    .line 79
    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->hideProgress(Z)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->hideBackBtn(Z)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->UpdateTetheredUI()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 169
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 177
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 173
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickBack:Z

    if-ne v0, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickDone:Z

    if-ne v0, v2, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onResume()V

    .line 96
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 100
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setDiscoverableEnable(Z)V

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickBack:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->bClickDone:Z

    .line 104
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->mThemeId:I

    if-eq v2, v3, :cond_2

    .line 106
    .local v0, isThemeChanged:Z
    :goto_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "HtcBluetoothTetherPage3"

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

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$3;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    return-void

    .end local v0           #isThemeChanged:Z
    :cond_2
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 165
    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 181
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcSpecialWizardActivity;->onStop()V

    .line 144
    return-void
.end method
