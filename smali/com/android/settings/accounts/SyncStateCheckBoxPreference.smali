.class public Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 56
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 57
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 58
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 49
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setLayoutResource(I)V

    .line 50
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 51
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v7, 0x7f09019b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/AnimatedImageView;

    .line 66
    .local v5, syncActiveView:Lcom/android/settings/widget/AnimatedImageView;
    const v7, 0x7f09019a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 68
    .local v6, syncFailedView:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v7, :cond_2

    :cond_0
    move v0, v10

    .line 69
    .local v0, activeVisible:Z
    :goto_0
    if-eqz v0, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {v5, v7}, Lcom/android/settings/widget/AnimatedImageView;->setVisibility(I)V

    .line 70
    iget-boolean v7, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {v5, v7}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    .line 72
    iget-boolean v7, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    move v2, v10

    .line 73
    .local v2, failedVisible:Z
    :goto_2
    if-eqz v2, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v7, 0x7f0901e7

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 77
    .local v3, listItem:Lcom/htc/widget/HtcListItem;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v7

    const/high16 v11, 0x40b0

    cmpl-float v7, v7, v11

    if-ltz v7, :cond_1

    .line 78
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 80
    :cond_1
    const v7, 0x1020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v7, :cond_6

    .line 82
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0c11c5

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v4           #summary:Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0           #activeVisible:Z
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #failedVisible:Z
    .end local v3           #listItem:Lcom/htc/widget/HtcListItem;
    :cond_2
    move v0, v8

    .line 68
    goto :goto_0

    .restart local v0       #activeVisible:Z
    :cond_3
    move v7, v9

    .line 69
    goto :goto_1

    :cond_4
    move v2, v8

    .line 72
    goto :goto_2

    .restart local v2       #failedVisible:Z
    :cond_5
    move v7, v9

    .line 73
    goto :goto_3

    .line 92
    .restart local v1       #checkBox:Landroid/view/View;
    .restart local v3       #listItem:Lcom/htc/widget/HtcListItem;
    :cond_6
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 103
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 121
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 129
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 112
    return-void
.end method
