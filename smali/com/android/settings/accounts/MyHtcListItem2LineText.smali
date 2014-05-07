.class public Lcom/android/settings/accounts/MyHtcListItem2LineText;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "MyHtcListItem2LineText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void
.end method
