.class Lcom/android/settings/framework/widget/HtcTextView$DisabledAllCapsTransformationMethod;
.super Landroid/text/method/AllCapsTransformationMethod;
.source "HtcTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/widget/HtcTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisabledAllCapsTransformationMethod"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method
