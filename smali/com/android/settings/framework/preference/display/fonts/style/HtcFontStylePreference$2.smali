.class Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;
.super Landroid/widget/ArrayAdapter;
.source "HtcFontStylePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 101
    move-object v6, p2

    .line 103
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_1

    .line 104
    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$100(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 105
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f04007d

    invoke-virtual {v3, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 107
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v7

    const/high16 v8, 0x40b0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    instance-of v7, v6, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 108
    check-cast v7, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 111
    :cond_0
    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$100(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "common_list_item_background"

    const v9, 0x208003b

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, backgroundId:I
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    .end local v0           #backgroundId:I
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 120
    .local v1, centerTextView:Lcom/htc/widget/HtcListItem1LineCenteredText;
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, childView:Landroid/view/View;
    instance-of v7, v2, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    move-object v5, v2

    .line 122
    check-cast v5, Landroid/widget/TextView;

    .line 123
    .local v5, textView:Landroid/widget/TextView;
    sget-object v7, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v7, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_2
    const v7, 0x1020001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcRadioButton;

    .line 128
    .local v4, radio:Lcom/htc/widget/HtcRadioButton;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getCurrentFontStyleIndex(I)I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 129
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 134
    :goto_0
    return-object v6

    .line 131
    :cond_3
    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0
.end method
