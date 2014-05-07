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

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/MasterClear;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;-><init>()V

    .line 106
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    .line 189
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 19

    .prologue
    .line 219
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

    .line 220
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v16

    const/high16 v17, 0x40b0

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const v17, 0x7f09015d

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0ec0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0299

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const v17, 0x7f09015e

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 245
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-nez v16, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f09015b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 251
    .local v4, divider:Landroid/view/View;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 257
    .end local v4           #divider:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090158

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem;

    .line 258
    .local v7, internalStorageContainer:Lcom/htc/widget/HtcListItem;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v16

    const/high16 v17, 0x40b0

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_2

    .line 259
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 261
    :cond_2
    const v16, 0x7f090159

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c02b0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c02a2

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 267
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 268
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    .line 274
    .local v11, phoneVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 275
    const v16, 0x7f09015a

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 277
    new-instance v16, Lcom/android/settings/MasterClear$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .end local v11           #phoneVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    .line 313
    .local v8, isExtStorageEmulated:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings/MasterClear$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 330
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v9

    .line 331
    .local v9, isFuse:Z
    invoke-static {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isPhoneStorageEncrypted(Landroid/content/Context;)Z

    move-result v10

    .line 333
    .local v10, phoneEncrypt:Z
    invoke-static {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isSdCardEncrypted(Landroid/content/Context;)Z

    move-result v13

    .line 336
    .local v13, sdcardEncrypt:Z
    sget-boolean v16, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v16, :cond_4

    .line 337
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

    .line 338
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

    .line 339
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

    .line 342
    :cond_4
    if-eqz v13, :cond_7

    if-nez v9, :cond_7

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 347
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 348
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 353
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090156

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090157

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 360
    .local v5, encryptedDescription:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v16

    if-nez v16, :cond_a

    const/4 v14, 0x1

    .line 363
    .local v14, supportNonFusePhoneStorage:Z
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v15

    .line 367
    .local v15, supportSdCard:Z
    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    .line 368
    const v12, 0x7f0c0298

    .line 385
    .local v12, resId:I
    :goto_1
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 386
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    .end local v5           #encryptedDescription:Landroid/widget/TextView;
    .end local v12           #resId:I
    .end local v14           #supportNonFusePhoneStorage:Z
    .end local v15           #supportSdCard:Z
    :cond_7
    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090156

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 407
    .local v6, erasingDescription:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f090157

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 411
    .restart local v5       #encryptedDescription:Landroid/widget/TextView;
    sget-boolean v16, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v16, :cond_8

    .line 412
    const-string v16, "MasterClear"

    const-string v17, "Encryption case: [FUSE-ed phone storage] + [SD card]"

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_8
    if-eqz v10, :cond_e

    if-eqz v13, :cond_e

    .line 423
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 429
    const v12, 0x7f0c0298

    .line 430
    .restart local v12       #resId:I
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 431
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 481
    .end local v5           #encryptedDescription:Landroid/widget/TextView;
    .end local v6           #erasingDescription:Landroid/view/View;
    .end local v12           #resId:I
    :cond_9
    :goto_2
    return-void

    .line 360
    .restart local v5       #encryptedDescription:Landroid/widget/TextView;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v14       #supportNonFusePhoneStorage:Z
    .restart local v15       #supportSdCard:Z
    :cond_b
    if-eqz v14, :cond_c

    .line 370
    const v12, 0x7f0c0297

    .restart local v12       #resId:I
    goto/16 :goto_1

    .line 371
    .end local v12           #resId:I
    :cond_c
    if-eqz v15, :cond_d

    .line 372
    const v12, 0x7f0c0296

    .restart local v12       #resId:I
    goto/16 :goto_1

    .line 374
    .end local v12           #resId:I
    :cond_d
    const v12, 0x7f0c0296

    .line 376
    .restart local v12       #resId:I
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

    .line 382
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v16, "MasterClear"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/IllegalStateException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static/range {v16 .. v18}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 445
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v12           #resId:I
    .end local v14           #supportNonFusePhoneStorage:Z
    .end local v15           #supportSdCard:Z
    .restart local v6       #erasingDescription:Landroid/view/View;
    :cond_e
    if-eqz v10, :cond_f

    .line 447
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 457
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0297

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_2

    .line 462
    :cond_f
    if-eqz v13, :cond_9

    .line 464
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Lcom/htc/widget/HtcListItem;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f0c0296

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto/16 :goto_2
.end method

.method private getCancelButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 640
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 642
    .local v1, button:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x7f0c1288

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 643
    new-instance v2, Lcom/android/settings/MasterClear$4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    return-object v1
.end method

.method private getToDoButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 661
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 663
    .local v1, button:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x2040174

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 664
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 670
    :cond_0
    return-object v1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 484
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, state:Ljava/lang/String;
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

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f090154

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 490
    .local v7, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f090155

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 491
    .local v10, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 495
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    .line 496
    .local v25, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v25 .. v25}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 497
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v4, v6

    .line 498
    .local v4, N:I
    if-nez v4, :cond_0

    .line 499
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 500
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string v26, "layout_inflater"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 507
    .local v20, inflater:Landroid/view/LayoutInflater;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 508
    .local v13, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v13

    .line 511
    .local v3, M:I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v22, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/MasterClear;->prepareDefaultAccounts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 515
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 516
    .local v15, googleIndex:I
    sget-boolean v26, Lcom/android/settings/MasterClear;->DEBUG:Z

    if-eqz v26, :cond_1

    .line 517
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

    .line 521
    :cond_1
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    .line 522
    aget-object v5, v6, v16

    .line 523
    .local v5, account:Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 524
    .local v12, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    .line 525
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v27, v13, v23

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 526
    aget-object v12, v13, v23

    .line 530
    :cond_2
    if-nez v12, :cond_4

    .line 531
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

    .line 521
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 524
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 535
    :cond_4
    const/16 v18, 0x0

    .line 537
    .local v18, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 538
    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 539
    .local v8, authContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 545
    .end local v8           #authContext:Landroid/content/Context;
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

    .line 548
    .local v9, child:Lcom/htc/widget/HtcListItem;
    const v26, 0x7f09013b

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcListItem2LineText;

    .line 549
    .local v24, label:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v26, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 550
    const v26, 0x7f090029

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemColorIcon;

    .line 553
    .local v19, iconView:Lcom/htc/widget/HtcListItemColorIcon;
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

    .line 557
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

    .line 563
    :goto_5
    if-eqz v18, :cond_7

    .line 564
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_7
    const-string v26, "com.google"

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 570
    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 541
    .end local v9           #child:Lcom/htc/widget/HtcListItem;
    .end local v19           #iconView:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v24           #label:Lcom/htc/widget/HtcListItem2LineText;
    :catch_0
    move-exception v14

    .line 542
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 559
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #child:Lcom/htc/widget/HtcListItem;
    .restart local v19       #iconView:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v24       #label:Lcom/htc/widget/HtcListItem2LineText;
    :cond_8
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    .line 572
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 578
    .end local v5           #account:Landroid/accounts/Account;
    .end local v9           #child:Lcom/htc/widget/HtcListItem;
    .end local v12           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v18           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #iconView:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v23           #j:I
    .end local v24           #label:Lcom/htc/widget/HtcListItem2LineText;
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListItem;

    .line 579
    .local v21, item:Lcom/htc/widget/HtcListItem;
    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/android/settings/framework/widget/HtcListItemDivider;->appendDivider(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 584
    .end local v21           #item:Lcom/htc/widget/HtcListItem;
    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private prepareDefaultAccounts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "inflater"
    .parameter "contents"
    .parameter
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

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListItem;>;"
    const/4 v7, 0x5

    .line 589
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 597
    .local v5, labelResources:[I
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    .line 605
    .local v1, iconResources:[I
    new-array v6, v7, [Z

    fill-array-data v6, :array_2

    .line 616
    .local v6, totalEraseOnly:[Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_1

    .line 617
    aget-boolean v7, v6, v3

    if-nez v7, :cond_0

    .line 618
    const v7, 0x7f0400a6

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 620
    .local v0, child:Lcom/htc/widget/HtcListItem;
    const v7, 0x7f09013b

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 621
    .local v4, label:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 622
    const v7, 0x7f090029

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 623
    .local v2, iconView:Lcom/htc/widget/HtcListItemColorIcon;
    aget v7, v5, v3

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 624
    aget v7, v1, v3

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 626
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v0           #child:Lcom/htc/widget/HtcListItem;
    .end local v2           #iconView:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v4           #label:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    :cond_1
    return-void

    .line 589
    :array_0
    .array-data 0x4
        0xf0t 0x2t 0x4t 0x2t
        0xb2t 0x2t 0x4t 0x2t
        0xc7t 0x2t 0xct 0x7ft
        0xc8t 0x2t 0xct 0x7ft
        0xc9t 0x2t 0xct 0x7ft
    .end array-data

    .line 597
    :array_1
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x70t 0x1t 0x2t 0x7ft
        0x6bt 0x1t 0x2t 0x7ft
        0x6et 0x1t 0x2t 0x7ft
    .end array-data

    .line 605
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
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 131
    .local v0, locker:Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 137
    invoke-virtual {v0, p1, v3, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    return v2

    .line 133
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

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mInternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_1

    .line 173
    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/MasterClear;->showNextConfirmation(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 182
    return-void

    .line 169
    :cond_0
    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 176
    :cond_1
    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getLabelForType(Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "accountType"
    .parameter "desc"

    .prologue
    .line 726
    const/4 v2, 0x0

    .line 728
    .local v2, label:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 729
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 737
    .end local v0           #authContext:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
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

    .line 732
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 733
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 734
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 735
    .local v1, e:Ljava/lang/NullPointerException;
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

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

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

    .prologue
    .line 744
    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 764
    const v0, 0x7f0c1171

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 749
    const-string v0, "com.htc.backupreset"

    .line 750
    .local v0, HTC_BACKUP_PACKAGE:Ljava/lang/String;
    const/4 v1, 0x0

    .line 752
    .local v1, parentIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.backupreset"

    invoke-static {v2, v3}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    new-instance v1, Landroid/content/Intent;

    .end local v1           #parentIntent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 754
    .restart local v1       #parentIntent:Landroid/content/Intent;
    const-string v2, "com.htc.backupreset"

    const-string v3, "com.htc.backupreset.ui.BackupResetActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onCreate(Landroid/content/Context;)V

    .line 678
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onCreate(Landroid/os/Bundle;)V

    .line 679
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 685
    if-eqz p2, :cond_0

    .line 686
    const v2, 0x2080001

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 688
    :cond_0
    const v2, 0x7f0400a5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 692
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->getCancelButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    .line 693
    .local v0, cancelButton:Lcom/htc/widget/HtcFooterButton;
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->getToDoButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 694
    .local v1, toDoButton:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

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

    .line 698
    iput-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Lcom/htc/widget/HtcFooterButton;

    .line 703
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->setContentView(Landroid/view/View;)V

    .line 706
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 708
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPatch:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->onDestroy()V

    .line 716
    invoke-super {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onDestroy()V

    .line 717
    return-void
.end method
