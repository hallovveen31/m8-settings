.class Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "OperatorPickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OperatorPickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperators:[Ljava/lang/String;

.field private selectPosition:I


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    iput-object p2, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mOperators:[Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mOperators:[Ljava/lang/String;

    array-length v0, v0

    return v0
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

.method public getSelect()I
    .locals 1

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;

    :goto_0
    iget-object v2, v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mOperators:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcRadioButton;

    iget v2, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    if-ne v2, p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    return-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040026

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v4, 0x40b0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_1
    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;-><init>()V

    const v2, 0x7f090021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f09004c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
