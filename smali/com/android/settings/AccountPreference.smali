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
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .parameter "showTypeIcon"
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

    .prologue
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 183
    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    .line 517
    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    .line 518
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AccountPreference;->mutex:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    .line 87
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 88
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 91
    iput-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 92
    iput-object p4, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 93
    iput-boolean p5, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    .line 94
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setLayoutResource(I)V

    .line 95
    if-eqz p5, :cond_0

    .line 96
    invoke-virtual {p0, p3}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, label:Ljava/lang/String;
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

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/AccountPreference;->setPersistent(Z)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 109
    return-void

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/AccountPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->onMenuBtnClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccountPreference;)Lcom/android/settings/AccountPreference$MenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/AccountPreference;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/AccountPreference;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/AccountPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->removeAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccountPreference;)Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AccountPreference;Lcom/htc/widget/HtcImageButton;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->countButtonEnlargeDimen(Lcom/htc/widget/HtcImageButton;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccountPreference;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AccountPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AccountPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->isAnySyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/AccountPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/AccountPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/AccountPreference;->removeAccountDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/AccountPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->requestOrCancelSyncForEnabledProviders(Z)V

    return-void
.end method

.method private countButtonEnlargeDimen(Lcom/htc/widget/HtcImageButton;)I
    .locals 4
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 356
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 358
    .local v0, buttonLocation:[I
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcImageButton;->getLocationInWindow([I)V

    .line 359
    invoke-virtual {p1}, Lcom/htc/widget/HtcImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 360
    .local v1, parent:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    aget v2, v0, v2

    sub-int v2, v3, v2

    invoke-virtual {p1}, Lcom/htc/widget/HtcImageButton;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 363
    .end local v0           #buttonLocation:[I
    .end local v1           #parent:Landroid/view/View;
    :cond_0
    return v2
.end method

.method private enlargeButtonTouchWidth(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    new-instance v0, Lcom/android/settings/AccountPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/AccountPreference$3;-><init>(Lcom/android/settings/AccountPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 353
    :cond_0
    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .parameter "status"

    .prologue
    const v3, 0x7f0c11b1

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 324
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

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 318
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 295
    packed-switch p1, :pswitch_data_0

    .line 309
    const v0, 0x7f020133

    .line 310
    .local v0, res:I
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

    .line 312
    :goto_0
    return v0

    .line 297
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f020131

    .line 298
    .restart local v0       #res:I
    goto :goto_0

    .line 300
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f020128

    .line 301
    .restart local v0       #res:I
    goto :goto_0

    .line 303
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f020133

    .line 304
    .restart local v0       #res:I
    goto :goto_0

    .line 306
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f020131

    .line 307
    .restart local v0       #res:I
    goto :goto_0

    .line 295
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
    .parameter "status"

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 287
    const v0, 0x7f0c11be

    .line 288
    .local v0, res:I
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

    .line 290
    :goto_0
    return v0

    .line 275
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f0c11bc

    .line 276
    .restart local v0       #res:I
    goto :goto_0

    .line 278
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f0c11bd

    .line 279
    .restart local v0       #res:I
    goto :goto_0

    .line 281
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f0c11be

    .line 282
    .restart local v0       #res:I
    goto :goto_0

    .line 284
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f0c11c0

    .line 285
    .restart local v0       #res:I
    goto :goto_0

    .line 273
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
    .parameter "view"

    .prologue
    const/4 v2, 0x2

    .line 185
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/settings/AccountPreference$MenuAdapter;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccountPreference$MenuAdapter;-><init>(Lcom/android/settings/AccountPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 192
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    new-instance v1, Lcom/android/settings/AccountPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccountPreference$2;-><init>(Lcom/android/settings/AccountPreference;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setExpandDirection(I)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 212
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setExpandDirection(I)V

    goto :goto_0
.end method

.method private isAnySyncActiveOrPending()Z
    .locals 4

    .prologue
    .line 483
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, auth:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    :cond_1
    const/4 v2, 0x1

    .line 494
    .end local v0           #auth:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    .line 491
    :cond_2
    const-string v2, "AccountPreference"

    const-string v3, "[isAnySyncActiveOrPending] mAuthorities is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .parameter "account"
    .parameter "auth"

    .prologue
    .line 502
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSyncable(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .parameter "account"
    .parameter "auth"

    .prologue
    .line 498
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
    .parameter "account"
    .parameter "auth"

    .prologue
    .line 506
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 507
    .local v4, types:[Landroid/content/SyncAdapterType;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 508
    .local v3, type:Landroid/content/SyncAdapterType;
    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 510
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    .line 514
    .end local v3           #type:Landroid/content/SyncAdapterType;
    :goto_1
    return v5

    .line 507
    .restart local v3       #type:Landroid/content/SyncAdapterType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v3           #type:Landroid/content/SyncAdapterType;
    :cond_1
    const-string v5, "AccountPreference"

    const-string v6, "sync adapter not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 216
    const/4 v6, 0x0

    .line 217
    .local v6, width:I
    const/4 v3, 0x0

    .line 218
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 219
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 221
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 223
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 224
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 225
    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 226
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 227
    move v3, v5

    .line 228
    const/4 v4, 0x0

    .line 230
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 232
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private onMenuBtnClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->initPopupWindowIfNeeded(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method private removeAccount()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/android/settings/AccountPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AccountPreference$5;-><init>(Lcom/android/settings/AccountPreference;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 590
    return-void
.end method

.method private removeAccountDialog()V
    .locals 5

    .prologue
    .line 522
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 523
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

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c11d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, dialogMessage:Ljava/lang/String;
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

    .line 551
    .end local v0           #dialogMessage:Ljava/lang/String;
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 473
    if-eqz p3, :cond_0

    .line 474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 7
    .parameter "flag"

    .prologue
    .line 452
    const/4 v3, 0x1

    .line 453
    .local v3, isSyncable:Z
    const/4 v2, 0x1

    .line 454
    .local v2, isSyncAutomatically:Z
    const/4 v4, 0x1

    .line 455
    .local v4, isVisible:Z
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 456
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, auth:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isSyncable(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 458
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 459
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/AccountPreference;->isVisible(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 461
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    if-nez v4, :cond_0

    .line 463
    :cond_1
    iget-object v5, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/settings/AccountPreference;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 467
    .end local v0           #auth:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v5, "AccountPreference"

    const-string v6, "[requestOrCancelSyncForEnabledProviders] mAuthorities is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 112
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

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    .line 121
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 122
    const v2, 0x7f090002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcImageButton;

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    .line 123
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v3, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v3}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 124
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    iget v2, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    if-ne v2, v7, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v3, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v3}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move-object v2, p1

    .line 139
    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem;->setVerticalDividerEnabled(Z)V

    .line 140
    const v2, 0x7f09003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcImageButton;

    iput-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    .line 141
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 142
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

    .line 145
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, v2}, Lcom/android/settings/AccountPreference;->enlargeButtonTouchWidth(Landroid/view/View;)V

    .line 148
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mMenuIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v3, Lcom/android/settings/AccountPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AccountPreference$1;-><init>(Lcom/android/settings/AccountPreference;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 160
    .end local v0           #resId:I
    :cond_1
    return-void

    .line 129
    :cond_2
    iget v2, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 130
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 169
    :cond_0
    return-void
.end method

.method public setSyncStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/high16 v2, 0x3f80

    .line 255
    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    .line 256
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 258
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setSyncStatus(IZ)V
    .locals 2
    .parameter "status"
    .parameter "updateSummary"

    .prologue
    .line 238
    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 241
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    .line 252
    :cond_1
    return-void

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setAlpha(F)V

    goto :goto_0
.end method
