.class Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalePickerSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePickerSetupWizardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static TYPE_ARA:I

.field private static TYPE_NORMAL:I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

.field private selectPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->TYPE_ARA:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->TYPE_NORMAL:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-void
.end method

.method private isRightToLeftScript(Ljava/util/Locale;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->isRightToLeftScript(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->TYPE_ARA:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->TYPE_NORMAL:I

    goto :goto_0
.end method

.method public getSelect()I
    .locals 1

    iget v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;

    :goto_0
    iget-object v2, v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcRadioButton;

    iget v2, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    if-ne v2, p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    return-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    new-instance v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;-><init>()V

    const v2, 0x7f090021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f09004c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setSelect(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
