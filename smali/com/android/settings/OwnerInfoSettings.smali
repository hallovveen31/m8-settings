.class public Lcom/android/settings/OwnerInfoSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mCheckbox:Lcom/htc/widget/HtcCheckBox;

.field private mEditText:Lcom/htc/widget/HtcEditText;

.field private mInfoTextView:Lcom/htc/widget/HtcListItem2LineText;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OwnerInfoSettings;)Lcom/htc/widget/HtcEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 71
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f09016d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    .line 72
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f09016e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcEditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;

    .line 73
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcEditText;->setEnabled(Z)V

    .line 75
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f09016c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mInfoTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mInfoTextView:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f0c0c5a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 83
    :goto_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mInfoTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    new-instance v4, Lcom/android/settings/OwnerInfoSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/OwnerInfoSettings$1;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 94
    return-void

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mInfoTextView:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f0c0c54

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0c0c5b

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    const v0, 0x7f0400b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->saveToDb()V

    .line 100
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, info:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 114
    return-void
.end method
