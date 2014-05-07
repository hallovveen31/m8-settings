.class public Lcom/android/settings/SmsListPreference$SmsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmsListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/SmsListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "imageDrawables"
    .parameter "selectedIndex"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->this$0:Lcom/android/settings/SmsListPreference;

    .line 51
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    .line 52
    iput p6, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    .line 53
    iput-object p5, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 58
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400e6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0901e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSingleText;

    .line 72
    .local v0, checkedTextView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget v4, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    if-ne p1, v4, :cond_0

    .line 74
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcRadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 76
    :cond_0
    const v4, 0x7f0901e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 77
    .local v1, imageView:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v4, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-object v3
.end method
