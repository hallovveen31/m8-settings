.class public Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmartPCStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartPCStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field listItem:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter "objects"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    .line 341
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 342
    iput-object p4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->listItem:[Ljava/lang/String;

    .line 343
    iput-object p2, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->mContext:Landroid/content/Context;

    .line 344
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "view"
    .parameter "viewgroup"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 347
    if-nez p2, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 349
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f06004e

    invoke-virtual {v2, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 351
    .end local v2           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f090328

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 352
    .local v1, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f09003d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    .line 353
    .local v3, tb:Lcom/htc/widget/HtcRadioButton;
    if-nez v3, :cond_2

    .line 354
    const-string v4, "SmartPCStorageDialog"

    const-string v5, "tb = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/android/settings/SmartPCStorageDialog;->access$900(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 356
    const/4 p2, 0x0

    .line 373
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 358
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/SmartPCStorageDialog;->access$1100(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "storage_prev_type"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/settings/SmartPCStorageDialog;->default_position:I
    invoke-static {v4, v5}, Lcom/android/settings/SmartPCStorageDialog;->access$1002(Lcom/android/settings/SmartPCStorageDialog;I)I

    .line 359
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->default_position:I
    invoke-static {v4}, Lcom/android/settings/SmartPCStorageDialog;->access$1000(Lcom/android/settings/SmartPCStorageDialog;)I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 360
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 364
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->listItem:[Ljava/lang/String;

    aget-object v0, v4, p1

    .line 365
    .local v0, item:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 368
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 369
    const v4, 0x7f0c075d

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0

    .line 362
    .end local v0           #item:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_1

    .line 370
    .restart local v0       #item:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 371
    const v4, 0x7f0c075f

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0
.end method
