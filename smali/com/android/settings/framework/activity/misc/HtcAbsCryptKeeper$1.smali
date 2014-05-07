.class Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper$1;
.super Ljava/lang/Object;
.source "HtcAbsCryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->setHtcContentView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper$1;->this$0:Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper$1;->this$0:Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onEditorAction(I)V

    return-void
.end method
