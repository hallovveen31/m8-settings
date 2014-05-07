.class Lcom/android/settings/location/LocationSettings$LocationModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/location/LocationSettings$LocationModeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/LocationSettings;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->mLayoutResId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;

    :goto_0
    const v2, 0x7f090043

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mListItem:Lcom/htc/widget/HtcListItem;

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mListItem:Lcom/htc/widget/HtcListItem;

    iget-boolean v5, v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mEnabled:Z

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    iget-object v5, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mListItem:Lcom/htc/widget/HtcListItem;

    iget-boolean v2, v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mEnabled:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mListItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    const v2, 0x7f090044

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mTextContent:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mTextContent:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mTextContent:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mTextContent:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    const v2, 0x7f090045

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    iget-object v2, v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    iget-boolean v3, v0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mChecked:Z

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->mLayoutResId:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;-><init>(Lcom/android/settings/location/LocationSettings$LocationModeAdapter;)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method
