.class Lcom/android/settings/AccountPreference$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/AccountPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AccountPreference;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v1, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/settings/AccountPreference;->access$400(Lcom/android/settings/AccountPreference;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AccountPreference;->access$500(Lcom/android/settings/AccountPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/settings/AccountPreference;->access$400(Lcom/android/settings/AccountPreference;)Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "CanRemove"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CanRemove="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04009d

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :cond_0
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->isAnySyncActiveOrPending()Z
    invoke-static {v2}, Lcom/android/settings/AccountPreference;->access$600(Lcom/android/settings/AccountPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x2040256

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    const-string v2, "tag_cancel_sync"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mStatus:I
    invoke-static {v2}, Lcom/android/settings/AccountPreference;->access$700(Lcom/android/settings/AccountPreference;)I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const v2, 0x7f0c11c3

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    const-string v2, "tag_sync_now"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_1

    const v2, 0x2040272

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    const-string v2, "tag_remove_account"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "tag_remove_account"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->removeAccountDialog()V
    invoke-static {v1}, Lcom/android/settings/AccountPreference;->access$800(Lcom/android/settings/AccountPreference;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "tag_sync_now"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->requestOrCancelSyncForEnabledProviders(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/AccountPreference;->access$900(Lcom/android/settings/AccountPreference;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "tag_cancel_sync"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AccountPreference$MenuAdapter;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->requestOrCancelSyncForEnabledProviders(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/AccountPreference;->access$900(Lcom/android/settings/AccountPreference;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
