.class Lcom/android/settings/bluetooth/OutOfRangePreference$1;
.super Landroid/os/AsyncTask;
.source "OutOfRangePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/OutOfRangePreference;->fetchAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OutOfRangePreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->val$location:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 133
    .local v7, comma:I
    if-gtz v7, :cond_0

    move-object v0, v10

    .line 149
    :goto_0
    return-object v0

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->val$location:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 139
    .local v1, latitude:D
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->val$location:Ljava/lang/String;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 140
    .local v3, longitude:D
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    const/4 v5, 0x1

    #calls: Lcom/android/settings/bluetooth/OutOfRangePreference;->getFromLocation(DDI)Ljava/util/List;
    invoke-static/range {v0 .. v5}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$000(Lcom/android/settings/bluetooth/OutOfRangePreference;DDI)Ljava/util/List;

    move-result-object v6

    .line 141
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    iget-object v5, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    #calls: Lcom/android/settings/bluetooth/OutOfRangePreference;->composeAddressLine(Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v5, v11, v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$100(Lcom/android/settings/bluetooth/OutOfRangePreference;Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 144
    .end local v1           #latitude:D
    .end local v3           #longitude:D
    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v9

    .line 145
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-string v0, "OutOfRangePreference"

    const-string v5, "invalid location string!"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    move-object v0, v10

    .line 149
    goto :goto_0

    .line 146
    :catch_1
    move-exception v8

    .line 147
    .local v8, e:Ljava/io/IOException;
    const-string v0, "OutOfRangePreference"

    const-string v5, "fail to get geocoder"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    #setter for: Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$202(Lcom/android/settings/bluetooth/OutOfRangePreference;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    #getter for: Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$300(Lcom/android/settings/bluetooth/OutOfRangePreference;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    #getter for: Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$200(Lcom/android/settings/bluetooth/OutOfRangePreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/HtcTagPreference;->persistOutOfRangeAddress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;->this$0:Lcom/android/settings/bluetooth/OutOfRangePreference;

    #calls: Lcom/android/settings/bluetooth/OutOfRangePreference;->notifyChanged()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->access$400(Lcom/android/settings/bluetooth/OutOfRangePreference;)V

    .line 159
    :cond_0
    return-void
.end method
