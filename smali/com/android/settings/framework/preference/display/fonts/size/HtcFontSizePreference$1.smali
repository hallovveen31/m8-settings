.class Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcFontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->initAdapter()V
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
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 224
    move-object v5, p2

    .line 226
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 227
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 228
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04007d

    invoke-virtual {v3, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 231
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mIsAlignLastControl:Z
    invoke-static {v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$100(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Z

    move-result v6

    if-ne v6, v8, :cond_0

    instance-of v6, v5, Lcom/htc/widget/HtcListItem;

    if-eqz v6, :cond_0

    move-object v6, v5

    .line 232
    check-cast v6, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 235
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "common_list_item_background"

    const v8, 0x208003b

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, backgroundId:I
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    .end local v0           #backgroundId:I
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 245
    .local v1, centerTextView:Lcom/htc/widget/HtcListItem1LineCenteredText;
    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, childView:Landroid/view/View;
    instance-of v6, v2, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v4, v2

    .line 249
    check-cast v4, Landroid/widget/TextView;

    .line 250
    .local v4, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPixel:[I
    invoke-static {v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$200(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)[I

    move-result-object v6

    aget v6, v6, p1

    int-to-float v6, v6

    invoke-virtual {v4, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_2
    return-object v5
.end method
