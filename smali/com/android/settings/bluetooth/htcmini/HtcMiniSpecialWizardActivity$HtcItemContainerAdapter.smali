.class Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcMiniSpecialWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcItemContainerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    }
.end annotation


# static fields
.field private static final ITEM1_INDEX:I = 0x0

.field private static final ITEM2_INDEX:I = 0x1

.field private static final ITEM_COUNT:I = 0x2


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040124

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f09002a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f0902f7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    new-instance v3, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    move-object v4, p2

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;Lcom/htc/widget/HtcListItem;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcRadioButton;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_3

    move-object v1, v3

    check-cast v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0d1e

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0afd

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    iget-object v7, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    iget-object v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v4}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-eq v5, v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0cb1

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0afe

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    iget-object v7, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v7}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v7

    if-ne v5, v7, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-eq v5, v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$102(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;I)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->persistSetupOption(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
