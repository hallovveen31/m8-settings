.class Lcom/android/settings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 386
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 387
    return-void
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, row:Landroid/view/View;
    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 437
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 438
    invoke-virtual {p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 439
    .local v0, dreamInfo:Lcom/android/settings/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 442
    .end local v0           #dreamInfo:Lcom/android/settings/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 437
    .restart local v0       #dreamInfo:Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v0           #dreamInfo:Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public activate(Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 3
    .parameter "dreamInfo"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 452
    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$200(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 392
    .local v0, dreamInfo:Lcom/android/settings/DreamBackend$DreamInfo;
    const-string v5, "getView(%s)"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v9, v8, v6

    #calls: Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v5, v8}, Lcom/android/settings/DreamSettings;->access$300(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 394
    .local v2, row:Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    const v5, 0x7f09002a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v8, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v5, 0x7f090099

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRadioButton;

    .line 404
    .local v1, radioButton:Lcom/htc/widget/HtcRadioButton;
    iget-boolean v5, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 405
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    .line 406
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 409
    iget-object v5, v0, Lcom/android/settings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    move v4, v7

    .line 412
    .local v4, showSettings:Z
    :goto_1
    if-eqz v4, :cond_0

    instance-of v5, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 413
    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem;->setVerticalDividerEnabled(Z)V

    .line 416
    :cond_0
    const v5, 0x7f09009a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcImageButton;

    .line 417
    .local v3, settingsButton:Lcom/htc/widget/HtcImageButton;
    if-eqz v4, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 419
    const v5, 0x7f0200f9

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 420
    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 421
    iget-boolean v5, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 422
    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    return-object v2

    .line 393
    .end local v1           #radioButton:Lcom/htc/widget/HtcRadioButton;
    .end local v2           #row:Landroid/view/View;
    .end local v3           #settingsButton:Lcom/htc/widget/HtcImageButton;
    .end local v4           #showSettings:Z
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .restart local v1       #radioButton:Lcom/htc/widget/HtcRadioButton;
    .restart local v2       #row:Landroid/view/View;
    :cond_2
    move v4, v6

    .line 409
    goto :goto_1

    .line 417
    .restart local v3       #settingsButton:Lcom/htc/widget/HtcImageButton;
    .restart local v4       #showSettings:Z
    :cond_3
    const/4 v5, 0x4

    goto :goto_2
.end method
