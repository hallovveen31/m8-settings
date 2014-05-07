.class Lcom/android/settings/AppPicker$1;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/AppPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AppPicker$1;->this$0:Lcom/android/settings/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AppPicker$1;->this$0:Lcom/android/settings/AppPicker;

    #calls: Lcom/android/settings/AppPicker;->performBackUp()V
    invoke-static {v0}, Lcom/android/settings/AppPicker;->access$000(Lcom/android/settings/AppPicker;)V

    return-void
.end method
