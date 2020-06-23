.class public final Lcom/android/systemui/plugins/qs/QSTile$SignalState;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public dataActivityIconId:I

.field public dataActivityWideIconId:I

.field public isOverlayIconWide:Z

.field public mobilePhoneLabel:Ljava/lang/String;

.field public overlayIconId:I

.field public overlayWideIconId:I

.field public roamingIconId:I

.field public simStatusIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 270
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 271
    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    move-object v1, p1

    .line 220
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 221
    .local v1, "o":Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-ne v2, v3, :cond_0

    .line 222
    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    if-eq v2, v3, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x1

    .line 234
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 235
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 236
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 237
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 240
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    .line 241
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    .line 242
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    .line 243
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    .line 244
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    .line 245
    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    .line 247
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return v0

    .line 223
    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-ne v2, v3, :cond_0

    .line 224
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-ne v2, v3, :cond_0

    .line 227
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    if-ne v2, v3, :cond_0

    .line 228
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    if-ne v2, v3, :cond_0

    .line 229
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    if-ne v2, v3, :cond_0

    .line 230
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    if-ne v2, v3, :cond_0

    .line 231
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    if-ne v2, v3, :cond_0

    .line 232
    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .local v0, "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "changed":Z
    goto :goto_0

    .line 247
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",simStatusIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",roamingIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",overlayWideIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",dataActivityIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",dataActivityWideIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",mobilePhoneLabel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    return-object v0
.end method
