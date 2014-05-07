.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "HtcMiniSpecialWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;
    }
.end annotation


# static fields
.field private static final ITEM1:I = 0x0

.field private static final ITEM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcMiniSpecialWizardActivity"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimation:Landroid/widget/ImageView;

.field private mBtAnimationResId:I

.field private mCheckedItem:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mDescTextResId:I

.field private mDescTextString:Ljava/lang/CharSequence;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDivider:Landroid/view/View;

.field private mImage:Landroid/widget/ImageView;

.field private mImageResId:I

.field protected mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNfcAnimationResId:I

.field private mText:Lcom/htc/widget/HtcListItem2LineText;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    return p1
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setSubContentView(I)V

    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0902f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setImage(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startBtAnimation(I)V

    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startNfcAnimation(I)V

    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(I)V

    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->isNfcAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showSetupOption()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMiniConnectedDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0af1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0af7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showSetupOption()V
    .locals 3

    const v2, 0x7f0902f6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090041

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "HtcMiniSpecialWizardActivity"

    const-string v1, "onClick!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2ee5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->isOrientationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->initialize()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    return-void
.end method

.method public onDelayUIUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->initialize()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    return-void
.end method

.method public onHtcMiniConnected()V
    .locals 2

    const-string v0, "HtcMiniSpecialWizardActivity"

    const-string v1, "onHtcMiniConnected!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showMiniConnectedDialog()V

    return-void
.end method

.method public onHtcMiniFound(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterHtcMiniCallback()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isNewConnectedMini()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showMiniConnectedDialog()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerHtcMiniCallback(Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;)V

    goto :goto_0
.end method

.method protected setDescriptionText(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x203006e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0
.end method

.method protected setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x203006e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setImage(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected startBtAnimation(I)V
    .locals 4

    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected startNfcAnimation(I)V
    .locals 4

    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
