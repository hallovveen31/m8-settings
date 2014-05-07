.class public Lcom/android/settings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccountPreference$MenuAdapter;
    }
.end annotation


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountPreference"

.field private static final TAG_CANCEL_SYNC:Ljava/lang/String; = "tag_cancel_sync"

.field private static final TAG_REMOVE_ACCOUNT:Ljava/lang/String; = "tag_remove_account"

.field private static final TAG_SYNC_NOW:Ljava/lang/String; = "tag_sync_now"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMenuIcon:Lcom/htc/widget/HtcImageButton;

.field private mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

.field mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AccountPreference;->mutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    iput-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.htc.sync.provider.weather"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.htc.newsreader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.htc.stock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.htc.showme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/AccountPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->onMenuBtnClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccountPreference;)Lcom/android/settings/AccountPreference$MenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/AccountPreference;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/AccountPreference;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/AccountPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->removeAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccountPreference;)Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AccountPreference;Lcom/htc/widget/HtcImageButton;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->countButtonEnlargeDimen(Lcom/htc/widget/HtcImageButton;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccountPreference;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AccountPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AccountPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->isAnySyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/AccountPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/AccountPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->removeAccountDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/AccountPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->requestOrCancelSyncForEnabledProviders(Z)V

    return-void
.end method

.method private countButtonEnlargeDimen(Lcom/htc/widget/HtcImageButton;)I
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    aget v2, v0, v2

    sub-int v2, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :cond_0
    return v2
.end method

.method private enlargeButtonTouchWidth(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/AccountPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/AccountPreference$3;-><init>(Lcom/android/settings/AccountPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0c11b1

    packed-switch p1, :pswitch_data_0

    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020133

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020131

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020128

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020133

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020131

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0c11be

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c11bc

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c11bd

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c11be

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c11c0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPopupWindowIfNeeded(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/AccountPreference$MenuAdapter;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccountPreference$MenuAdapter;-><init>(Lcom/android/settings/AccountPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    new-instance v1, Lcom/android/settings/AccountPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccountPreference$2;-><init>(Lcom/android/settings/AccountPreference;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setExpandDirection(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setExpandDirection(I)V

    goto :goto_0
.end method

.method private isAnySyncActiveOrPending()Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const-string v2, "AccountPreference"

    const-string v3, "[isAnySyncActiveOrPending] mAuthorities is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSyncable(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "AccountPreference"

    const-string v6, "sync adapter not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method private onMenuBtnClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->initPopupWindowIfNeeded(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method private removeAccount()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/android/settings/AccountPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AccountPreference$5;-><init>(Lcom/android/settings/AccountPreference;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private removeAccountDialog()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    const-string v2, "AccountPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Remove account : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c11d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c11ce

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c11ce

    new-instance v4, Lcom/android/settings/AccountPreference$4;

    invoke-direct {v4, p0}, Lcom/android/settings/AccountPreference$4;-><init>(Lcom/android/settings/AccountPreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isSyncable(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isVisible(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    if-nez v4, :cond_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/settings/AccountPreference;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v5, "AccountPreference"

    const-string v6, "[requestOrCancelSyncForEnabledProviders] mAuthorities is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f090002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcImageButton;

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v3, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v3}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v2, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v3, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v3}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem;->setVerticalDividerEnabled(Z)V

    const v2, 0x7f09003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcImageButton;

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "icon_btn_more_light"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, v2}, Lcom/android/settings/AccountPreference;->enlargeButtonTouchWidth(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v3, Lcom/android/settings/AccountPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AccountPreference$1;-><init>(Lcom/android/settings/AccountPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setSyncStatus(I)V
    .locals 4

    const/high16 v2, 0x3f80

    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setSyncStatus(IZ)V
    .locals 2

    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0
.end method
