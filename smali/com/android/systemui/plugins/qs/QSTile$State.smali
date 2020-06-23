.class public Lcom/android/systemui/plugins/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/CharSequence;

.field public disabledByPolicy:Z

.field public dualLabelContentDescription:Ljava/lang/CharSequence;

.field public dualTarget:Z

.field public expandedAccessibilityClassName:Ljava/lang/String;

.field public icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public isTransient:Z

.field public label:Ljava/lang/CharSequence;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 105
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 167
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 168
    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 119
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 121
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 123
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 124
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 125
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 125
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 127
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 129
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 130
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 131
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 121
    if-nez v1, :cond_2

    .line 132
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 137
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 140
    iget v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 141
    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 143
    return v0

    .line 121
    :cond_2
    const/4 v0, 0x1

    .local v0, "changed":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v1, ",expandedAccessibilityClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, ",disabledByPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, ",dualTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v1, ",isTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
