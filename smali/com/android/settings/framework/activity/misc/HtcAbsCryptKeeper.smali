.class public Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcAbsCryptKeeper.java"


# static fields
.field public static final ACC_DEFAULT_VALUE_DECRYPT_STORAGE_COOL_DOWN_ATTEMPTS:I = 0xa

.field public static final ACC_DEFAULT_VALUE_DECRYPT_STORAGE_MAX_FAILED_ATTEMPTS:I = 0x1e

.field public static final ACC_KEY_DECRYPT_STORAGE_COOL_DOWN_ATTEMPTS:Ljava/lang/String; = "decrypt_storage_cool_down_attempts"

.field public static final ACC_KEY_DECRYPT_STORAGE_MAX_FAILED_ATTEMPTS:Ljava/lang/String; = "decrypt_storage_max_failed_attempts"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcAbsCryptKeeper"


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field protected mIsAlphaPasswordQuality:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    return-void
.end method

.method private final applyHtcActionBar()V
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v3, :cond_1

    .line 75
    new-instance v3, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 78
    iget-object v3, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 81
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, mText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 85
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 87
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 89
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v2           #mText:Lcom/htc/widget/ActionBarText;
    :cond_1
    return-void
.end method

.method private getActionBarText()Lcom/htc/widget/ActionBarText;
    .locals 4

    .prologue
    .line 128
    iget-object v3, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 130
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    .line 131
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 132
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/widget/ActionBarText;

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/ActionBarText;

    .line 136
    :goto_1
    return-object v3

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected enableDecryptButton(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 333
    .local v0, decryptButton:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    :cond_0
    return-void
.end method

.method protected enablePasswordEntryAndShowIME(Landroid/widget/TextView;)V
    .locals 3
    .parameter "passwordEntry"

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 231
    return-void
.end method

.method protected getPreviousFailedAttempts()I
    .locals 2

    .prologue
    .line 234
    const-string v0, "vold.failed_decrypt_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected initOtherUiOfDecryptStorage(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "maxAttempts"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->initPasswordQuality(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setNormalStatusTextOnDecryptStorage()V

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setRemainedAttemptDescription(I)V

    .line 354
    return-void
.end method

.method protected initPasswordEntryInputMode(Landroid/widget/TextView;)V
    .locals 2
    .parameter "passwordEntry"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 216
    .local v0, currentType:I
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    if-eqz v1, :cond_0

    .end local v0           #currentType:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 221
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 223
    return-void

    .line 216
    .restart local v0       #currentType:I
    :cond_0
    const/16 v0, 0x903

    goto :goto_0
.end method

.method protected initPasswordQuality(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    .line 211
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->applyHtcActionBar()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected setHtcContentView(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x400

    .line 147
    const-string v6, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 148
    .local v3, sbm:Landroid/app/StatusBarManager;
    const/high16 v6, 0x121

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 153
    const v6, 0x7f040060

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setContentView(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->show()V

    .line 156
    const v6, 0x7f0c0a41

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setTitle(I)V

    .line 161
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v6

    const-string v7, "DesiredPowerState"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 163
    .local v4, status:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 164
    const-string v6, "DesiredPowerState"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, powerState:Ljava/lang/String;
    if-eqz v2, :cond_2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    sget-boolean v6, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcAbsCryptKeeper"

    const-string v7, "Radio is on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2           #powerState:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 180
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, operatorName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 183
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setSecondaryTitleVisibility(I)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setSecondaryTitle(Ljava/lang/String;)V

    .line 188
    :cond_1
    const v6, 0x7f0900bb

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    .local v0, decryptButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper$1;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper$1;-><init>(Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void

    .line 169
    .end local v0           #decryptButton:Landroid/widget/Button;
    .end local v1           #operatorName:Ljava/lang/String;
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    .restart local v2       #powerState:Ljava/lang/String;
    :cond_2
    sget-boolean v6, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "HtcAbsCryptKeeper"

    const-string v7, "Radio is off"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected setIncorrectStatusTextOnDecryptStorage()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0c02d9

    .line 278
    .local v0, statusTextId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->showStatusTextOnDecryptStorage(I)V

    .line 279
    return-void

    .line 274
    .end local v0           #statusTextId:I
    :cond_0
    const v0, 0x7f0c02da

    goto :goto_0
.end method

.method protected setNormalStatusTextOnDecryptStorage()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0c02d7

    .line 270
    .local v0, statusTextId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->showStatusTextOnDecryptStorage(I)V

    .line 271
    return-void

    .line 266
    .end local v0           #statusTextId:I
    :cond_0
    const v0, 0x7f0c02d8

    goto :goto_0
.end method

.method protected setRemainedAttemptDescription(I)V
    .locals 8
    .parameter "remainedAttempt"

    .prologue
    .line 238
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->getDecryptStorageMaxFailedAttempts()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getPreviousFailedAttempts()I

    move-result v5

    sub-int v2, v4, v5

    .line 242
    .local v2, previousRemainedAttempt:I
    if-ge v2, p1, :cond_2

    move v1, v2

    .line 245
    .local v1, newRemainedAttempt:I
    :goto_0
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 246
    const-string v4, "HtcAbsCryptKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " previousRemainedAttempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v4, "HtcAbsCryptKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " remainedAttempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v4, "HtcAbsCryptKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " newRemainedAttempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100001

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, template:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, failedAttemptView:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 258
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #failedAttemptView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_1
    :goto_1
    return-void

    .end local v1           #newRemainedAttempt:I
    .end local v3           #template:Ljava/lang/String;
    :cond_2
    move v1, p1

    .line 242
    goto :goto_0

    .line 260
    .restart local v0       #failedAttemptView:Landroid/view/View;
    .restart local v1       #newRemainedAttempt:I
    .restart local v3       #template:Ljava/lang/String;
    :cond_3
    instance-of v4, v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v4, :cond_1

    .line 261
    check-cast v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    .end local v0           #failedAttemptView:Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "secondaryTitle"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 110
    .local v0, mText:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setSecondaryTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 122
    .local v0, mText:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->applyHtcActionBar()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActionBarText()Lcom/htc/widget/ActionBarText;

    move-result-object v0

    .line 98
    .local v0, mText:Lcom/htc/widget/ActionBarText;
    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method protected showFailedTryWarningDialog(II)V
    .locals 6
    .parameter "remainedAttempt"
    .parameter "failedAttempt"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c02de

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, tryTemplate:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x2040262

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 328
    return-void
.end method

.method protected showScreenLockedAlertDialog(II)V
    .locals 10
    .parameter "failedAttempt"
    .parameter "coolDownInterval"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v4, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->mIsAlphaPasswordQuality:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0c02dd

    :goto_0
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, tryTemplate:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0c71

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 300
    .local v0, coolDownTemplate:Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v1, messageBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "lockscreen_screen_locked"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, title:Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 315
    return-void

    .line 293
    .end local v0           #coolDownTemplate:Ljava/lang/CharSequence;
    .end local v1           #messageBuilder:Ljava/lang/StringBuilder;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #tryTemplate:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c02dc

    goto :goto_0
.end method

.method protected showStatusTextOnDecryptStorage(I)V
    .locals 3
    .parameter "textId"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, status:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 285
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #status:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0       #status:Landroid/view/View;
    :cond_1
    instance-of v1, v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    .end local v0           #status:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(I)V

    goto :goto_0
.end method

.method protected tryPasswordAgain(Landroid/widget/TextView;II)V
    .locals 1
    .parameter "passwordEntry"
    .parameter "maxAttempts"
    .parameter "failedAttempts"

    .prologue
    .line 339
    add-int/lit8 v0, p2, -0x5

    if-lt p3, v0, :cond_0

    if-ge p3, p2, :cond_0

    .line 343
    sub-int v0, p2, p3

    invoke-virtual {p0, v0, p3}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->showFailedTryWarningDialog(II)V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setIncorrectStatusTextOnDecryptStorage()V

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->enablePasswordEntryAndShowIME(Landroid/widget/TextView;)V

    .line 348
    return-void
.end method
