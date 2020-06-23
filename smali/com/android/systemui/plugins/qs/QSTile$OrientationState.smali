.class public Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
.super Lcom/android/systemui/plugins/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrientationState"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-void
.end method

.method public static getNextState(I)I
    .locals 1
    .param p0, "cValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 326
    packed-switch p0, :pswitch_data_0

    .line 334
    return v0

    .line 328
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 330
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 332
    :pswitch_2
    return v0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;-><init>()V

    .line 355
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 356
    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    move-object v1, p1

    .line 340
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    .line 341
    .local v1, "o":Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 342
    .local v0, "changed":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    .line 343
    return v0

    .line 341
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return-object v0
.end method
