.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;->onResume()V
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
    .line 207
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->recreate()V

    .line 211
    return-void
.end method
