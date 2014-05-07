.class public Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_NEXT:I = 0x2


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mCancelButton:Landroid/widget/Button;

.field private mCommonBar:Lcom/htc/widget/HtcFooter;

.field private mContinueButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mKeyboardbg:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

.field private mSpaceKiller:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    :cond_0
    const v2, 0x7f0c0b0e

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarText;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 307
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 274
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x7f09003f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 318
    const/4 v0, 0x1

    const v1, 0x7f0c0ca6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 320
    const/4 v0, 0x2

    const v1, 0x7f0c0ca7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 322
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 323
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 125
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v8, v1, Lcom/android/settings/ConfirmLockPassword;

    if-eqz v8, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V

    .line 131
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getAltUnlockMethod()I

    move-result v6

    .line 134
    .local v6, storedQuality:I
    :goto_0
    const v8, 0x7f040019

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 136
    .local v7, view:Landroid/view/View;
    const v8, 0x7f09002e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mSpaceKiller:Landroid/view/View;

    .line 137
    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v8, 0x7f090040

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 139
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const v9, 0x7f0c0ca7

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 141
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 144
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v9, 0x7f0c0ca6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 147
    const v8, 0x7f09002f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 148
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    const v8, 0x7f090031

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardbg:Landroid/view/View;

    .line 151
    const v8, 0x7f09003e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcFooter;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCommonBar:Lcom/htc/widget/HtcFooter;

    .line 152
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCommonBar:Lcom/htc/widget/HtcFooter;

    if-eqz v8, :cond_1

    .line 153
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooter;->ReverseLandScapeSequence(Z)V

    .line 155
    :cond_1
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 157
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->setHasOptionsMenu(Z)V

    .line 158
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCommonBar:Lcom/htc/widget/HtcFooter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 160
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 164
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    const/high16 v8, 0x4

    if-eq v8, v6, :cond_2

    const/high16 v8, 0x5

    if-eq v8, v6, :cond_2

    const/high16 v8, 0x6

    if-ne v8, v6, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 176
    .local v4, isAlpha:Z
    :goto_1
    const v8, 0x7f090032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    .line 177
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setTargetView(Landroid/view/View;)V

    .line 179
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate()V

    .line 190
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    .line 191
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardbg:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mSpaceKiller:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 204
    .local v2, currentType:I
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .end local v2           #currentType:I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 205
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 220
    new-instance v8, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 221
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v8}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 222
    if-eqz v4, :cond_6

    const v3, 0x7f0c0f20

    .line 223
    .local v3, id:I
    :goto_3
    new-instance v8, Lcom/htc/widget/ActionBarText;

    invoke-direct {v8, v1}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 224
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v8, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 225
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v8, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 226
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 227
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 229
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 233
    const v8, 0x7f09002d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ChooseLockFrameLayout;

    .line 234
    .local v5, mvg:Lcom/android/settings/ChooseLockFrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/settings/ChooseLockFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {v5}, Lcom/android/settings/ChooseLockFrameLayout;->adjustLayout()V

    .line 237
    return-object v7

    .line 131
    .end local v0           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v3           #id:I
    .end local v4           #isAlpha:Z
    .end local v5           #mvg:Lcom/android/settings/ChooseLockFrameLayout;
    .end local v6           #storedQuality:I
    .end local v7           #view:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    goto/16 :goto_0

    .line 164
    .restart local v0       #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .restart local v6       #storedQuality:I
    .restart local v7       #view:Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 204
    .restart local v2       #currentType:I
    .restart local v4       #isAlpha:Z
    :cond_5
    const/16 v2, 0x903

    goto :goto_2

    .line 222
    .end local v2           #currentType:I
    :cond_6
    const v3, 0x7f0c0f22

    goto :goto_3
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 298
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 349
    :goto_0
    return v0

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setResult(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 244
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 336
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 251
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 310
    return-void
.end method
