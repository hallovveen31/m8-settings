.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;
.source "MasterClear.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "com.htc.intent.extra.erase_external_sd_card"

.field static final ERASE_INTERNAL_EXTRA:Ljava/lang/String; = "com.htc.intent.extra.erase_internal_sd_card"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

.field private mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

.field private mInitiateButton:Lcom/htc/widget/HtcFooterButton;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mInternalStorageContainer:Lcom/htc/widget/HtcListItem;

.field private mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

.field private mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/MasterClear;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;-><init>()V

    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f09015c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v16

    const/high16 v17, 0x40b0

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const v17, 0x7f09015d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0ec0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0299

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const v17, 0x7f09015e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f09015b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090158

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v16

    const/high16 v17, 0x40b0

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_2
    const v16, 0x7f090159

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c02b0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c02a2

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const v16, 0x7f09015a

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    new-instance v16, Lcom/android/settings/MasterClear$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings/MasterClear$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v9

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isPhoneStorageEncrypted(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isSdCardEncrypted(Landroid/content/Context;)Z

    move-result v13

    sget-boolean v16, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v16, :cond_4

    const-string v16, "MasterClear"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "encryption:isFuse: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "MasterClear"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "encryption:phoneEncrypt: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "MasterClear"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "encryption:sdcardEncrypt: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v13, :cond_7

    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090156

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090157

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v16

    if-nez v16, :cond_a

    const/4 v14, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v15

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    const v12, 0x7f0c0298

    :goto_1
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090156

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090157

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-boolean v16, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v16, :cond_8

    const-string v16, "MasterClear"

    const-string v17, "Encryption case: [FUSE-ed phone storage] + [SD card]"

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v10, :cond_e

    if-eqz v13, :cond_e

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x7f0c0298

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v14, :cond_c

    const v12, 0x7f0c0297

    goto/16 :goto_1

    :cond_c
    if-eqz v15, :cond_d

    const v12, 0x7f0c0296

    goto/16 :goto_1

    :cond_d
    const v12, 0x7f0c0296

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknow case with the encrypted encryprion"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - supportNonFusePhoneStorage: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - supportSdCard: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, "MasterClear"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/IllegalStateException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static/range {v16 .. v18}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_e
    if-eqz v10, :cond_f

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0297

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_2

    :cond_f
    if-eqz v13, :cond_9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0296

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto/16 :goto_2
.end method

.method private getCancelButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c1288

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/android/settings/MasterClear$4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private getToDoButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    const v2, 0x2040174

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_0
    return-object v1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f090154

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f090155

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    array-length v4, v6

    if-nez v4, :cond_0

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v26, "layout_inflater"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    array-length v3, v13

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/MasterClear;->prepareDefaultAccounts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v15

    sget-boolean v26, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "MasterClear"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "googleIndex: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    aget-object v5, v6, v16

    const/4 v12, 0x0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v27, v13, v23

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    aget-object v12, v13, v23

    :cond_2
    if-nez v12, :cond_4

    const-string v26, "MasterClear"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No descriptor for account name="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " type="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    :try_start_0
    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v26, v0

    if-eqz v26, :cond_5

    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :cond_5
    :goto_4
    const v26, 0x7f0400a6

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    const v26, 0x7f09013b

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcListItem2LineText;

    const/16 v26, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    const v26, 0x7f090029

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "com.htc.sync.provider.weather"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "com.htc.newsreader"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "com.htc.stock"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "com.htc.showme"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_6
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/MasterClear;->getLabelForType(Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v18, :cond_7

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const-string v26, "com.google"

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-exception v14

    const-string v26, "MasterClear"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No icon for account type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListItem;

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/android/settings/framework/widget/HtcListItemDivider;->appendDivider(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private prepareDefaultAccounts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    new-array v1, v7, [I

    fill-array-data v1, :array_1

    new-array v6, v7, [Z

    fill-array-data v6, :array_2

    const/4 v3, 0x0

    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_1

    aget-boolean v7, v6, v3

    if-nez v7, :cond_0

    const v7, 0x7f0400a6

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const v7, 0x7f09013b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    const v7, 0x7f090029

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    aget v7, v5, v3

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    aget v7, v1, v3

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0xf0t 0x2t 0x4t 0x2t
        0xb2t 0x2t 0x4t 0x2t
        0xc7t 0x2t 0xct 0x7ft
        0xc8t 0x2t 0xct 0x7ft
        0xc9t 0x2t 0xct 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x70t 0x1t 0x2t 0x7ft
        0x6bt 0x1t 0x2t 0x7ft
        0x6et 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0, p1, v3, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    const v2, 0x7f0c0ec5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0ec6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method

.method private showFinalConfirmation()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_0

    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_1

    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->showNextConfirmation(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getLabelForType(Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No label for account type , type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No label for account type , type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException found for account type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getActivity() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c1171

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 4

    const-string v0, "com.htc.backupreset"

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.backupreset"

    invoke-static {v2, v3}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.backupreset"

    const-string v3, "com.htc.backupreset.ui.BackupResetActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onCreate(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    const v2, 0x2080001

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v2, 0x7f0400a5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->getCancelButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->getToDoButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/htc/widget/HtcFooterButton;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onDestroy()V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroy()V

    return-void
.end method
