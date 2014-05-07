.class Lcom/android/settings/ISActivity$1;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ISActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "keyevent"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 95
    :cond_0
    const-string v0, "NetSharing_ISActivity"

    const-string v1, "Press Back Key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 110
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0
.end method
