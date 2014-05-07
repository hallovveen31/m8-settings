.class public Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationFlashSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationFlashSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorListViewAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/NotificationFlashSettings$ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectColor:I

.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationFlashSettings;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/NotificationFlashSettings$ColorItem;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-string v3, "__NOTIFY_FLASH__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultColor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget v3, v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    iget v4, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectColor()I
    .locals 1

    iget v0, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    return v0
.end method

.method public getSelectColorPosition()I
    .locals 4

    iget-object v2, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    iget-object v2, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget v2, v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    if-ne v3, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/NotificationFlashSettings$ViewHolder;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->newItemView(Lcom/android/settings/NotificationFlashSettings$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;

    iget-object v1, v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->radioBtn:Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->radioBtn:Lcom/htc/widget/HtcRadioButton;

    iget v3, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget v1, v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v1, v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget-object v1, v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newItemView(Lcom/android/settings/NotificationFlashSettings$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v1, p1, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRadioButton;

    iput-object v1, p1, Lcom/android/settings/NotificationFlashSettings$ViewHolder;->radioBtn:Lcom/htc/widget/HtcRadioButton;

    return-object v0
.end method

.method public setSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->mSelectColor:I

    return-void
.end method
