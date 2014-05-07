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
    .parameter
    .parameter "context"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 281
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "idx"

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "idx"

    .prologue
    .line 296
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "idx"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 312
    const/4 v3, 0x0

    .line 313
    .local v3, viewTag:Ljava/lang/Object;
    if-nez p2, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040124

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 315
    const v4, 0x7f09002a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 316
    .local v2, title:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f0902f7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    .line 317
    .local v0, radio:Lcom/htc/widget/HtcRadioButton;
    new-instance v3, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    .end local v3           #viewTag:Ljava/lang/Object;
    move-object v4, p2

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;Lcom/htc/widget/HtcListItem;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcRadioButton;)V

    .line 318
    .local v3, viewTag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    .end local v0           #radio:Lcom/htc/widget/HtcRadioButton;
    .end local v2           #title:Lcom/htc/widget/HtcListItem2LineText;
    .end local v3           #viewTag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    :goto_0
    if-nez p1, :cond_3

    move-object v1, v3

    .line 323
    check-cast v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    .line 324
    .local v1, tag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    if-eqz v4, :cond_0

    .line 326
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0d1e

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 327
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0afd

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 328
    iget-object v7, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    iget-object v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v4}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 329
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 330
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 345
    .end local v1           #tag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    :cond_0
    :goto_2
    return-object p2

    .line 320
    .local v3, viewTag:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .end local v3           #viewTag:Ljava/lang/Object;
    .restart local v1       #tag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    :cond_2
    move v4, v6

    .line 328
    goto :goto_1

    .line 333
    .end local v1           #tag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    :cond_3
    if-ne p1, v5, :cond_0

    move-object v1, v3

    .line 334
    check-cast v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;

    .line 335
    .restart local v1       #tag:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0cb1

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 338
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0c0afe

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 339
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    iget-object v7, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v7}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v7

    if-ne v5, v7, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 340
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 341
    iget-object v4, v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "idx"

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$102(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;I)I

    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->persistSetupOption(Landroid/content/Context;I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->notifyDataSetChanged()V

    .line 357
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
