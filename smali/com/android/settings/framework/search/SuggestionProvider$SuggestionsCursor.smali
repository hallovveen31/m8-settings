.class Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/search/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/framework/search/SuggestionProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/search/SuggestionProvider;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->this$0:Lcom/android/settings/framework/search/SuggestionProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p2, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->mSuggestions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/search/SuggestionProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    iget-object v0, v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    iget-object v0, v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    iget v0, v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
