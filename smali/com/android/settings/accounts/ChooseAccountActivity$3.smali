.class Lcom/android/settings/accounts/ChooseAccountActivity$3;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$3;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$3;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onBackPressed()V

    .line 486
    return-void
.end method
